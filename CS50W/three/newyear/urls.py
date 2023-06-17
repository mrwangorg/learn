from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),  #default route function in views.py
]
