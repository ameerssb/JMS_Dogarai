from django.urls import path
from . import views

urlpatterns = [
    path('', views.Home.as_view(), name="JournalHome"),
    path('search', views.Search.as_view(), name="Search"),
    path('search/<str:pk>/', views.More.as_view(), name="journal"),
    path('search/journals-and-books', views.Browse.as_view(), name="Browse")
]
