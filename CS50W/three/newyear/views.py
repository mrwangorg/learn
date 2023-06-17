from django.shortcuts import render
import datetime

# Create your views here.


def index(request):
    now = datetime.datetime.now()
    # must in template fold /template/newyear/index.html
    return render(request, "newyear/index.html", {
        "newyear": now.month == 1 and now.day == 1,
    })
