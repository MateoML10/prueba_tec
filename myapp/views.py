from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login
from django.contrib.auth import logout
from django.contrib.auth.forms import AuthenticationForm
from myapp.forms import EmpleadosForms
from myapp.models import Empleados
# Create your views here.


def signup(request):
    if request.user.is_authenticated:
        return redirect('/')
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password1')
            user = authenticate(username=username, password=password)
            login(request, user)
            return redirect('/')
        else:
            return render(request, 'signup.html', {'form': form})
    else:
        form = UserCreationForm()
        return render(request, 'signup.html', {'form': form})


def home(request):
    return render(request, 'home.html')


def signin(request):
    if request.user.is_authenticated:
        return render(request, 'home.html')
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('/profile')
        else:
            msg = 'Error Login'
            form = AuthenticationForm(request.POST)
            return render(request, 'login.html', {'form': form, 'msg': msg})
    else:
        form = AuthenticationForm()
        return render(request, 'login.html', {'form': form})


def profile(request):
    empleados = Empleados.objects.all()
    return render(request, 'profile.html', {'empleados': empleados})


def signout(request):
    logout(request)
    return redirect('/')


def addnew(request):
    if request.method == "POST":
     form = EmpleadosForms(request.POST)
     if form.is_valid():
        try:
            form.save()
            return redirect('/profile')
        except:
            pass

    else:
        form = EmpleadosForms()
    return render(request, 'index.html', {'form': form})


def edit(request, id):
    empleados = Empleados.objects.get(id=id)
    return render(request, 'edit.html', {'empleados': empleados})


def update(request, id):
    empleados = Empleados.objects.get(id=id)
    form = EmpleadosForms(request.POST, instance=empleados)
    if form.is_valid():
       form.save()
       return redirect('/profile')
    return render(request, 'edit.html',{'empleados':empleados})

def destroy(request, id):
    empleados = Empleados.objects.get(id=id)
    empleados.delete()
    return redirect("/profile")