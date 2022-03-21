from django.shortcuts import render
from django.http import JsonResponse
from books.models import Book
from django.db.models import Q


def index(request):
    return render(request, 'base.html')


def search(request):
    query = request.GET.get('q')

    if not query:
        books = []
    else:
        books = Book.objects.filter(Q(title__startswith=query) | Q(author__startswith=query))
    serialized_books = [{'id': book.id, 'title': book.title, 'name': book.author} for book in books]
    return JsonResponse(serialized_books, safe=False)

