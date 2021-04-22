from django.shortcuts import render

# Create your views here.
def index(reuqest):
    context = {}
    return render(reuqest, "index.html", context=context)