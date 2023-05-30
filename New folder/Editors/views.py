from django.shortcuts import render,redirect,HttpResponseRedirect,HttpResponse
from django.views import View
from django.urls import reverse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from journals.models import Submit_Papers_Info,Paper_Update_History,Paper_Editors,Paper_Reviewers,Paper_Comments
from main.models import Editor,Relate,Reviewer
from .forms import EditorForm,Paper_Reviewers_Form
from django.contrib import messages
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from main.decorators import email_verification_required,active_verification_required,is_associate_editor_accepted_required,is_main_editor_accepted_required,user_sigin
# Create your views here.

editor_deco = [login_required, email_verification_required('Signin'), active_verification_required('Signin'),is_associate_editor_accepted_required('Editor','Home','Editor_Register')]
reg_deco = [login_required,user_sigin(Editor,'Editor_Dashboard')]

@method_decorator(editor_deco, name='get')
class Home(View):
    display = 10
    def get(self,request):
        display = self.display
        papers = Paper_Reviewers.objects.filter(editor=request.user).all().order_by('-created','-updated')
        editor = Editor.objects.get(user=request.user)
        count = papers.count()
        title = ''
        payment = ''
        paid = Submit_Papers_Info.objects.filter(user=request.user,payment='paid').all().order_by('-created','-updated')
        unpaid = Submit_Papers_Info.objects.filter(user=request.user,payment='unpaid').all().order_by('-created','-updated')
        new = Submit_Papers_Info.objects.filter(status='Submitted',domain__icontains=editor.domain,subdomain__icontains=editor.subdomain).all().order_by('-created','-updated')
        und = Paper_Reviewers.objects.filter(editor=request.user,review_status='Under-Review').all().order_by('-created','-updated')
        uni = Paper_Reviewers.objects.filter(editor=request.user,review_status='Not-Interested').all().order_by('-created','-updated')
        acc = Paper_Reviewers.objects.filter(editor=request.user,review_status='Accepted').all().order_by('-created','-updated')
        rej = Paper_Reviewers.objects.filter(editor=request.user,review_status='Rejected').all().order_by('-created','-updated')
        pub = Paper_Reviewers.objects.filter(editor=request.user,review_status='Published').all().order_by('-created','-updated')
        filtercounts = {'new':new.count(),'und':und.count(),'uni':uni.count(),'acc':acc.count(),'rej':rej.count(),'pub':pub.count()}
        paycounts = {'paid':paid.count(), 'unpaid':unpaid.count()}
        if request.GET.get('filter'):
            if request.GET.get('filter') == 'new':
                papers = new
                title = 'new'
            if request.GET.get('filter') == 'under-review':
                papers = und
                title = 'under-review'
            if request.GET.get('filter') == 'not-interested':
                papers = uni
                title = 'not-interested'
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
        return render(request, 'Editors/index.html', context)

@method_decorator(editor_deco, name='get')
@method_decorator(editor_deco, name='post')
class Paper(View):
    def get(self,request,pk):
        paper = Submit_Papers_Info.objects.get(id=pk)
        paper_reviewer = Paper_Reviewers.objects.filter(paper=paper.pk).exclude(review_status ="Not-Interested")
        papers_reviewers_not_interested = Paper_Reviewers.objects.filter(paper=paper.pk,review_status="Not-Interested")
        reviewers = Reviewer.objects.filter(domain__icontains=paper.domain,subdomain__icontains=paper.subdomain).all().order_by('-created')
        comments = Paper_Comments.objects.filter(paper=pk,reviewer=request.user).all().order_by('-created')        
        context = {'paper':paper,'reviewers':reviewers,'paper_reviewer':paper_reviewer,
                   'papers_reviewers_not_interested':papers_reviewers_not_interested,
                   'comments':comments
                  }

        return render(request, 'Editors/paper_view.html', context)
    def post(self,request,pk):
        paper = Submit_Papers_Info.objects.get(id=pk)
        form = Paper_Reviewers_Form(request.POST)
        print(form['reviewer'])
        if form.is_valid():
            available = Paper_Reviewers.objects.filter(reviewer=request.POST['reviewer'],paper=paper)
            if available:
                messages.error(request,"Reviewer already added before")
                return redirect(reverse('Editors_Paper', kwargs={'pk':pk}))                
            else:
                reviewer = form.save(commit=False)
                reviewer.editor = request.user                
                reviewer.paper = paper
                Paper_Editors.objects.get_or_create(editor=request.user,paper=paper)
                reviewer.save()
                return redirect(reverse('Editors_Paper', kwargs={'pk':pk}))
        else:
            messages.error(request,"An error occured while trying to add reviewer")
            return redirect(reverse('Editors_Paper', kwargs={'pk':pk}))

@method_decorator(editor_deco, name='get')
@method_decorator(editor_deco, name='post')
class New(View):
    def get(self,request):
        
        return render(request, 'Editors/new.html')

    def post(self,request):
        return render(request, 'Editors/new.html')

@method_decorator(editor_deco, name='get')
@method_decorator(editor_deco, name='post')
class Update(View):
    def get(self,request,pk):

        context = {}

        return render(request, 'Editors/update.html', context)

    def post(self,request,pk):

        context = {}

        return render(request, 'Editors/update.html', context)

@method_decorator(editor_deco, name='get')
class History(View):
    def get(self,request, pk):
        paper = Submit_Papers_Info.objects.get(id=pk)
        papers = Paper_Update_History.objects.filter(paper_id=pk).all().order_by('-created')
        count = papers.count()
        if request.user == paper.user:
            context = {'papers':papers,'count':count,'paper':paper}

            return render(request, 'Editors/history.html', context)
        else:
            return redirect(reverse('Paper', kwargs={'pk':pk}))

@method_decorator(editor_deco, name='get')
class PaperHistory(View):
    def get(self,request,pk):

        paper = Paper_Update_History.objects.get(id=pk)
        context = {'paper':paper,}

        return render(request, 'Editors/paper_view_history.html', context)

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

        return render(request, 'Editors/register.html', context)

    def post(self,request):
        data = Relate.objects.filter(user=request.user).first()
        if data:
            Editorform = EditorForm(request.POST or None,instance=data)
        else:            
            Editorform = EditorForm(request.POST or None)
        if Editorform.is_valid():
            New = Editorform.save(commit=False)
            New.user = request.user
            New.is_associate_editor_accepted = True
            New.save()
            return redirect(reverse('Editor_Dashboard'))
        else:
            messages.error(request,'The form is not completed correctly')
            return render(request, 'Editors/register.html')

