from django.shortcuts import render,HttpResponseRedirect,HttpResponse,redirect,get_object_or_404
from django.views import View
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .forms import UserForm
from .models import User
from verify_email.email_handler import send_verification_email
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_protect
from django.utils.decorators import method_decorator
from django.contrib.auth import authenticate, login, logout
from .decorators import email_verification_required,active_verification_required,user_sigin,is_reviewer_accepted_required
from django.contrib import messages
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse
from django.contrib.auth.forms import PasswordResetForm
from .models import User
from django.template.loader import render_to_string
from django.db.models.query_utils import Q
from django.utils.http import urlsafe_base64_encode
from django.contrib.auth.tokens import default_token_generator
from django.utils.encoding import force_bytes
# Create your views here.

signout_deco = [login_required]
sigin_reg_deco = [user_sigin('Home')]

class Home(View):
    def get(self,request):

        context = {}

        return render(request, 'Main/index.html', context)

    def post(self,request):
        return render(request, 'Main/index.html')

@method_decorator(sigin_reg_deco, name='get')
@method_decorator(sigin_reg_deco, name='post')
#@method_decorator(ver)
class Signin(View):
    def get(self,request):

        context = {}

        return render(request, 'Main/signin.html', context)

    def post(self,request):
        if request.user.is_authenticated:
            return redirect('/')
        else:
            if request.POST['email'] and request.POST['password']:
                email = request.POST['email']
                password = request.POST['password']
                user = authenticate(email=email, password=password)
                u = User.objects.get(email=email)
                if user is not None:
                    if user.is_active:
#                        if u.is_email_verified:
                        login(request, user)
                        if request.GET.get('next'):
                            return redirect(request.GET.get('next'))
                        else:  
                            return redirect('Home')
#                        else:
#                            messages.error(request,"Your email is not verified, Please verify before Signing in")
#                            return redirect('Signin')                    
                    else:
                        messages.error(request,"Your account is disabled, Contact Us via Suppport Team")
                        return redirect('Signin')                    
                else:
                    messages.error(request, "Invalid username or password")
                    return redirect('Signin')
            else:
                messages.error(request,"Error while Submitting request please check form and re-submit")
                return redirect('Sigin')

@method_decorator(signout_deco, name='get')
class Signout(View):
    def get(self,request):
        logout(request)
        return redirect('Signin')

@method_decorator(sigin_reg_deco, name='get')
@method_decorator(sigin_reg_deco, name='post')
class Register(View):
    def get(self,request):
        
        context = {}

        return render(request, 'Main/register.html', context)

    def post(self,request):

        form = UserForm(request.POST)
        if form.is_valid():
            try:
                send_verification_email(request, form)
                messages.success(request, "Account created. check your email inbox to verify your account")
                return redirect('Signin')
            except:
                messages.error(request, "an error occured while sending verification to your email, can't create your account at this time")
                return redirect('Register')
        else:
                messages.error(request, "Registration form is not filled correctly")
                return redirect('Register')

@method_decorator(sigin_reg_deco, name='get')
@method_decorator(sigin_reg_deco, name='post')
class password_reset_request(View):
    def get(self,request):
        password_reset_form = PasswordResetForm()
        return render(request=request, template_name="Main/password_reset.html", context={"password_reset_form":password_reset_form})        

    def post(self,request):
        password_reset_form = PasswordResetForm(request.POST)
        if password_reset_form.is_valid():
            data = password_reset_form.cleaned_data['email']
            associated_users = User.objects.filter(Q(email=data))
            if associated_users.exists():
                for user in associated_users:
                    subject = "Password Reset Requested"
                    email_template_name = "Main/password_reset_email.txt"
                    c = {
                    "email":user.email,
                    'domain':'127.0.0.1:8000',
                    'site_name': 'Yumsuk Journals',
                    "uid": urlsafe_base64_encode(force_bytes(user.pk)),
                    "user": user,
                    'token': default_token_generator.make_token(user),
                    'protocol': 'http',
                    }
                    email = render_to_string(email_template_name, c)
                    try:
                        send_mail(subject, email, 'noreply<support@yumsukjournals.com>' , [user.email], fail_silently=False)
                    except BadHeaderError:
                        return HttpResponse('Invalid header found.')
                    except:
                        messages.error(request,'an error occured while trying to send password reset details, Check your internet connection or try again later')
                        return redirect('Signin')
                    return redirect ("/accounts/password_reset/done/")
    