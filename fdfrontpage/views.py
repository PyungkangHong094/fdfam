from django.shortcuts import render

# Create your views here.
def index(reuqest):
    context = {}
    return render(reuqest, "index.html", context=context)

def blog(reuqest):
    context = {}
    return render(reuqest, "blog.html", context=context)