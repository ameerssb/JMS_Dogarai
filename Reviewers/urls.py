from django.urls import path
from . import views

urlpatterns = [
    path('', views.Home.as_view(), name="Reviewer_Dashboard"),
    path('register/', views.Register.as_view(), name="Reviewer_Register"),
    path('paper/<str:pk>', views.Paper.as_view(), name="Reviewer_Paper"),
    path('add_comment/<str:pk>', views.Add_Comment.as_view(), name="Reviewer_Comment"),    
    path('history/', views.History.as_view(), name="Reviewer_History"),
]
