from django.urls import path,include
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.contrib.auth import views as auth_views
from . import views

urlpatterns = [
    path('', views.Home.as_view(), name="Home"),
    path('account/signin/', views.Signin.as_view(), name="Signin"),
    path('account/signout/', login_required(views.Signout.as_view()), name="Signout"),
    path('account/register/', views.Register.as_view(), name="Register"),
    path('account/verification/', include('verify_email.urls')),
    path('account/password_change/',auth_views.PasswordChangeView.as_view(template_name='Main/password_change.html',success_url = 'done/'),name='password_change'),    
    path('account/password_change/done/',auth_views.PasswordChangeView.as_view(template_name='Main/password_change_done.html',success_url = 'password_change_done'),name='password_change_done'),    
    path("account/password_reset/", views.password_reset_request.as_view(), name="password_reset"),
    path('account/password_reset/done/', auth_views.PasswordResetDoneView.as_view(template_name='Main/password_reset_done.html'), name='password_reset_done'),
    path('account/reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(template_name="Main/password_reset_confirm.html"), name='password_reset_confirm'),
    path('account/reset/done/', auth_views.PasswordResetCompleteView.as_view(template_name='Main/password_reset_complete.html'), name='password_reset_complete'),      
]
