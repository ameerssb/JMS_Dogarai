from django.shortcuts import render,redirect,HttpResponseRedirect,HttpResponse
from django.views import View
from Journals.models import Submit_Papers_Info,Paper_Update_History
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.urls import reverse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from Journals.models import Submit_Papers_Info,Paper_Update_History,Paper_Reviewers,Paper_Comments
from django.contrib import messages
from Main.models import Reviewer
from .forms import ReviewerForm,CommentsForm,Paper_Reviewers_Form
from django.utils.decorators import method_decorator
from django.contrib.auth.decorators import login_required
from Main.decorators import email_verification_required,active_verification_required,is_reviewer_accepted_required,user_sigin
# Create your views here.

reviewer_deco = [login_required, email_verification_required('Signin'), active_verification_required('Signin'),is_reviewer_accepted_required('Reviewer','Home','Reviewer_Register')]
reg_deco = [login_required,user_sigin(Reviewer,'Reviewer_Dashboard')]

@method_decorator(reviewer_deco, name='get')
class Home(View):
    display = 10
    def get(self,request):
        display = self.display
        papers = Paper_Reviewers.objects.filter(reviewer=request.user).all().order_by('-created','-updated')
        count = papers.count()
        title = ''
        new = Paper_Reviewers.objects.filter(reviewer=request.user,review_status='No Decision').all().order_by('-created','-updated')
        und = Paper_Reviewers.objects.filter(reviewer=request.user,review_status='Under-Review').all().order_by('-created','-updated')
        uni = Paper_Reviewers.objects.filter(reviewer=request.user,review_status='Not-Interested').all().order_by('-created','-updated')
        acc = Paper_Reviewers.objects.filter(reviewer=request.user,review_status='Accepted').all().order_by('-created','-updated')
        rej = Paper_Reviewers.objects.filter(reviewer=request.user,review_status='Rejected').all().order_by('-created','-updated')
        pub = Paper_Reviewers.objects.filter(reviewer=request.user,review_status='Published').all().order_by('-created','-updated')
        filtercounts = {'new':new.count(),'und':und.count(),'uni':uni.count(),'acc':acc.count(),'rej':rej.count(),'pub':pub.count()}
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

        context = {'papers':papers, 'display': display,'count': count,'filtercount':filtercounts,'title':title}

        return render(request, 'Reviewers/index.html', context)

def Assigned(request):
    if request.method == 'get':
        pass
        
@method_decorator(reviewer_deco, name='get')
@method_decorator(reviewer_deco, name='post')
class Paper(View):
    def get(self,request,pk):
        paper = Paper_Reviewers.objects.get(reviewer=request.user,paper=pk)
        reviewers_count = Paper_Reviewers.objects.filter(paper=pk,review_status="No Decision").count()
        comments = Paper_Comments.objects.filter(paper=pk,reviewer=request.user).all().order_by('-created')
        context = {'paper':paper,
                    'reviewers_count':reviewers_count,
                    'comments':comments
                  }

        return render(request, 'Reviewers/paper_view.html', context)
    def post(self,request,pk):
        if request.POST['decision'] == 'Under-Review':
            form = request.POST['decision']
            Paper_Reviewers.objects.filter(paper=pk,reviewer=request.user).update(review_status=str(form))
            Submit_Papers_Info.objects.filter(id=pk).update(status=str(form))
            return redirect(reverse('Reviewer_Paper', kwargs={'pk':pk}))
        elif request.POST['decision'] == 'Not-Interested':
            form = request.POST['decision']
            Paper_Reviewers.objects.filter(paper=pk,reviewer=request.user).update(review_status=str(form))
            return redirect(reverse('Reviewer_Paper', kwargs={'pk':pk}))
        elif request.POST['decision'] == 'Accepted':
            form = request.POST['decision']
            Paper_Reviewers.objects.filter(paper=pk,reviewer=request.user).update(review_status=str(form))
            Submit_Papers_Info.objects.filter(id=pk).update(status=str(form))
            return redirect(reverse('Reviewer_Paper', kwargs={'pk':pk}))
        elif request.POST['decision'] == 'Rejected':
            form = request.POST['decision']
            Paper_Reviewers.objects.filter(paper=pk,reviewer=request.user).update(review_status=str(form))
            Submit_Papers_Info.objects.filter(id=pk).update(status=str(form))
            return redirect(reverse('Reviewer_Paper', kwargs={'pk':pk}))
        else:
            messages.error(request,"No data Added")
            return redirect(reverse('Reviewer_Paper', kwargs={'pk':pk}))

@method_decorator(reviewer_deco, name='post')
class Add_Comment(View):
    def post(self,request,pk):
        form = CommentsForm(request.POST,request.FILES or None)
        if form.is_valid():
            paper = Submit_Papers_Info.objects.get(id=pk)
            comment = form.save(commit=False)
            comment.paper = paper
            comment.version = paper.version
            comment.reviewer=request.user
            comment.save()
            return redirect(reverse('Reviewer_Paper', kwargs={'pk':pk}))
        else:
            messages.error(request,"No Comment Added")
            return redirect(reverse('Reviewer_Paper', kwargs={'pk':pk}))

class New(View):
    def get(self,request):

        
        context = {}

        return render(request, 'Authors/new.html', context)

    def post(self,request):
        return render(request, 'Authors/new.html')

class New_Upload(View):
    def get(self,request):

        context = {}

        return render(request, 'Authors/upload.html', context)

    def post(self,request):
        return render(request, 'Authors/upload.html')

class Update(View):
    def get(self,request):

        context = {}

        return render(request, 'Authors/update.html', context)

    def post(self,request):
            return render(request, 'Authors/update.html')

class History(View):
    def get(self,request):

        context = {}

        return render(request, 'Authors/history.html', context)

    def post(self,request):
            return render(request, 'Authors/history.html')

@method_decorator(reg_deco, name='get')
@method_decorator(reg_deco, name='post')
class Register(View):
    def get(self,request):

        context = {}

        return render(request, 'Reviewers/register.html', context)

    def post(self,request):
        reviewerform = ReviewerForm(request.POST or None)
        if reviewerform.is_valid():
            New = reviewerform.save(commit=False)
            New.user = request.user
            New.save()
            return redirect('Reviewer_Dashboard')
        else:
            messages.error(request,'The form is not completed correctly')
            return render(request, 'Reviewers/register.html')

