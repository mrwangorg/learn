from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),  # "/hello" route to run index function in views
    path("joe", views.joe, name="joe"),  # "/hello/joe" route to run joe function in views
    path("<str:name>", views.greet, name="greet")
]
