from django.shortcuts import render

def index(request):
    return render(request, 'portfolio/index.html')


def pictures(request):
    return render(request, 'portfolio/pictures.html')