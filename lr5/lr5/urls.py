from django.urls import path
from books.views import index, search

urlpatterns = [
    path('', index),
    path('search', search),
]
