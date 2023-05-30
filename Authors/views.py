from django.shortcuts import render,redirect,HttpResponseRedirect,HttpResponse
from django.views import View
from django.urls import reverse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from Journals.models import Submit_Papers_Info,Paper_Update_History,Paper_Comments
from Main.models import Author,Relate
from .forms import NewForm,HistoryForm,AuthorForm
from django.contrib import messages
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from Main.decorators import email_verification_required,active_verification_required,is_author_accepted_required,user_sigin
from paystackapi.paystack import Paystack
import os

paystack_secret_key = str(os.getenv("PAYSTACK"))
paystack = Paystack(secret_key=paystack_secret_key)

# Create your views here.

author_deco = [login_required, email_verification_required('Signin'), active_verification_required('Signin'),is_author_accepted_required('Author','Home','Author_Register')]
reg_deco = [login_required,user_sigin(Author,'Author_Dashboard')]


def Payment(email):
    amount = 500000
#    e = 'sanisbature17@gmail.com'
    try:
        payment = paystack.transaction.initialize(email=email,amount=amount)
    except:
        payment = {'status': False, 'message': '', 
                    'data': {'authorization_url': '', 'access_code': '', 'reference': ''}}
    return payment

def checkout(reference):
    try:
        status = paystack.transaction.verify(reference)
    except:
        status = {'status': False, 'data':{'status': 'failed'}}

    if status['status'] == True:
        if status['data']['status'] == 'success':
            return 'success'
        else:
            return 'unpaid'
    else:
        return 'failed'

def checkuser(data,count):
    for i in range(count):
        check = checkout(data[i].reference_number)
        if check == 'success':
            update = Submit_Papers_Info.objects.get(id=data[i].pk)
            update.payment = 'Paid'
            update.save()
        else:
            if data[i].status != 'Unpaid':
                update = Submit_Papers_Info.objects.get(id=data[i].pk)
                update.payment = 'Unpaid'
                update.save()      
    
@method_decorator(author_deco, name='get')
class Home(View):
    display = 10
    def get(self,request):
        display = self.display
        papers = Submit_Papers_Info.objects.filter(user=request.user).all().order_by('-created','-updated')
        count = papers.count()
        checkuser(papers,count)
        title = ''
        payment = ''
        paid = Submit_Papers_Info.objects.filter(user=request.user,payment='paid').all().order_by('-created','-updated')
        unpaid = Submit_Papers_Info.objects.filter(user=request.user,payment='unpaid').all().order_by('-created','-updated')
        sub = Submit_Papers_Info.objects.filter(user=request.user,status='Submitted').all().order_by('-created','-updated')
        und = Submit_Papers_Info.objects.filter(user=request.user,status='Under-Review').all().order_by('-created','-updated')
        acc = Submit_Papers_Info.objects.filter(user=request.user,status='Accepted').all().order_by('-created','-updated')
        rej = Submit_Papers_Info.objects.filter(user=request.user,status='Rejected').all().order_by('-created','-updated')
        pub = Submit_Papers_Info.objects.filter(user=request.user,status='Published').all().order_by('-created','-updated')
        filtercounts = {'sub':sub.count(),'und':und.count(),'acc':acc.count(),'rej':rej.count(),'pub':pub.count()}
        paycounts = {'paid':paid.count(), 'unpaid':unpaid.count()}
        if request.GET.get('filter'):
            if request.GET.get('filter') == 'submitted':
                papers = sub
                title = 'submitted'
            if request.GET.get('filter') == 'under-review':
                papers = und
                title = 'under-review'
            if request.GET.get('filter') == 'accepted':
                papers = acc
                title = 'accepted'
            if request.GET.get('filter') == 'rejected':
                papers = rej
                title = 'rejected'
            if request.GET.get('filter') == 'published':
                papers = pub
                title = 'published'
        if request.GET.get('payment'):
            if request.GET.get('payment') == 'Paid':
                papers = paid
                payment = 'Paid'
            if request.GET.get('payment') == 'Unpaid':
                papers = unpaid
                payment = 'Unpaid'
        page = request.GET.get('page')
        if request.GET.get('display'):
            display = request.GET.get('display')
            display = int(display)
        paginator = Paginator(papers, display)
        try:
            papers = paginator.page(page)
        except PageNotAnInteger:
            papers = paginator.page(1)
        except EmptyPage:
            papers = paginator.page(paginator.num_pages)

        context = {'papers':papers, 'display': display,'count': count,'filtercount':filtercounts,'title':title,'paycount':paycounts,'payment':payment}

        return render(request, 'Authors/index.html', context)

@method_decorator(author_deco, name='get')
class Paper(View):
    def get(self,request,pk):
        paper = Submit_Papers_Info.objects.filter(id=pk)
        checkuser(paper,paper.count())
        paper = paper.first()
        comments = Paper_Comments.objects.filter(paper=pk,reviewer=request.user).all().order_by('-created')
        context = {'paper':paper,'comments':comments}

        return render(request, 'Authors/paper_view.html', context)

@method_decorator(author_deco, name='get')
@method_decorator(author_deco, name='post')
class New(View):
    def get(self,request):
        
        return render(request, 'Authors/new.html')

    def post(self,request):
        Newform = NewForm(request.POST or None,request.FILES or None)
        Historyform = HistoryForm(request.POST or None,request.FILES or None)            
        if Newform.is_valid() and Historyform.is_valid():
            New = Newform.save(commit=False)
            New.user = request.user
            payment = Payment(New.corres_emails)
            if payment['status'] == False:
                messages.success(request,'Can\'t Add a Paper at this time, try again')
                return render(request, 'Authors/new.html')
            else:
                New.reference_number = payment['data']['reference']
                New.reference_url = payment['data']['authorization_url']
                New.version += 1
                History = Historyform.save(commit=False)
                History.version = New.version
                History.paper_id = New.id
                New.save()
                History.save()
                messages.success(request,'Successfully Submitted Paper, Check Dashboard for Paper Status')
                return render(request, 'Authors/new.html')
        else:
            messages.error(request,'The form is not completed correctly')
            return render(request, 'Authors/new.html')

@method_decorator(author_deco, name='get')
@method_decorator(author_deco, name='post')
class Update(View):
    def get(self,request,pk):
        paper = Submit_Papers_Info.objects.get(id=pk)
        if request.user == paper.user:
            context = {'paper':paper}

            return render(request, 'Authors/update.html', context)
        else:
            return redirect(reverse('Paper', kwargs={'pk':pk}))

    def post(self,request,pk):
        paper = Submit_Papers_Info.objects.get(id=pk)
        Newform = NewForm(request.POST or None,request.FILES or None, instance=paper)
        Historyform = HistoryForm(request.POST or None,request.FILES or None)
        if Newform.is_valid() and Historyform.is_valid():
            New = Newform.save(commit=False)
            if New.reference_number == '':
                payment = Payment(New.corres_emails)
                if payment['status'] == False:
                    messages.success(request,'Can\'t Update the Paper at this time, try again')
                    return redirect(reverse('Update', kwargs={'pk':pk}))
                else:
                    New.reference_number = payment['data']['reference']
                    New.reference_url = payment['data']['authorization_url']
                    New.version += 1
                    History = Historyform.save(commit=False)
                    History.paper_id = paper.pk
                    History.version = New.version
                    New.save()
                    History.save()
                    messages.success(request,'Successfully Update Paper, Check Paper History for Paper Changes')
                    return redirect(reverse('Update', kwargs={'pk':pk}))
            else:
                New.version += 1
                History = Historyform.save(commit=False)
                History.paper_id = paper.pk
                History.version = New.version
                New.save()
                History.save()
                messages.success(request,'Successfully Update Paper, Check Paper History for Paper Changes')
                return redirect(reverse('Update', kwargs={'pk':pk}))
        else:
            messages.error(request,'The form is not completed correctly')
            return redirect(reverse('Update', kwargs={'pk':pk}))

@method_decorator(author_deco, name='get')
class History(View):
    def get(self,request, pk):
        paper = Submit_Papers_Info.objects.get(id=pk)
        papers = Paper_Update_History.objects.filter(paper_id=pk).all().order_by('-created')
        count = papers.count()
        if request.user == paper.user:
            context = {'papers':papers,'count':count,'paper':paper}

            return render(request, 'Authors/history.html', context)
        else:
            return redirect(reverse('Paper', kwargs={'pk':pk}))

@method_decorator(author_deco, name='get')
class PaperHistory(View):
    def get(self,request,pk):

        paper = Paper_Update_History.objects.get(id=pk)
        comments = Paper_Comments.objects.filter(paper=pk,reviewer=request.user).all().order_by('-created')
        context = {'paper':paper,'comments':comments}

        return render(request, 'Authors/paper_view_history.html', context)

@method_decorator(reg_deco, name='get')
@method_decorator(reg_deco, name='post')
class Register(View):
    def get(self,request):
        data = Relate.objects.filter(user=request.user).first()
        if data:
            form = data
        else:
            form = None
        
        context = {'form':form}

        return render(request, 'Authors/register.html', context)

    def post(self,request):
        Authorform = AuthorForm(request.POST or None)
        if Authorform.is_valid():
            New = Authorform.save(commit=False)
            New.user = request.user
            New.is_author_accepted = True
            New.save()
            return redirect(reverse('Author_Dashboard'))
        else:
            messages.error(request,'The form is not completed correctly')
            return render(request, 'Authors/register.html')

