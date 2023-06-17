from django.urls import path

from . import views

app_name = "task"
urlpatterns = [
    path("", views.index, name="index"),  #default route function in views.py
    path("add", views.add, name="add"),
]