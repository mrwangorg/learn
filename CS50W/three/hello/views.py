import re
from django.http import HttpResponse
from django.shortcuts import render


# Create your views here.
def index(request):
    return render(request, "hello/index.html")  # in template/hello/index.html


def joe(request):
    return HttpResponse(request, "Hello, Joe!")


def greet(request, name):
    return render(request, "hello/greet.html", {
        "name": name.capitalize(),
    })
