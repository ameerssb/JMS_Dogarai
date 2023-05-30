from django.urls import path
from . import views

urlpatterns = [
    path('', views.Home.as_view(), name="Editor_Dashboard"),
    path('register/', views.Register.as_view(), name="Editor_Register"),
    path('add_paper/', views.New.as_view(), name="Editors_New"),
    path('paper/<str:pk>/', views.Paper.as_view(), name="Editors_Paper"),
    path('paper/update/<str:pk>/', views.Update.as_view(), name="Editors_Update"),
    path('paper/history/<str:pk>/', views.History.as_view(), name="Editors_History"),
    path('paper/history/version/<str:pk>/', views.PaperHistory.as_view(), name="Editors_PaperHistory"),
]
