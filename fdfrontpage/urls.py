from django.urls import path
from fdfrontpage import views

urlpatterns = [
    path("", views.index, name="index"),
]