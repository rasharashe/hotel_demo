"""hotel URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from.import views
from django.urls import path,include

urlpatterns = [
    path('',views.index),
    path('registration/',views.registration),
    path('about/',views.about),
    path('contact/',views.contact),
    path('services/',views.services),
    path('room/',views.room),
    path('login/',views.login),
    path('admin_a/',views.admin_a),
    path('user_a/',views.user_a),
    path('user_aa/',views.user_aa),    
    path('log/',views.out),
    path('admin_aa/',views.admin_aa),
    path('addroom/',views.addroom),
    path('add/',views.add),
    path('r_details/',views.r_details),
    path('book/',views.book),
    path('roomus/',views.roomus),
    path('booking/',views.booking),
    path('booked/',views.booked),
    path('remove/',views.remove),
    path('b_details/',views.b_details),
    path('approve/',views.approve),
    path('cancel/',views.cancel),
    path('c_details/',views.c_details),
    path('cncl/',views.cncl),
    path('homeus/',views.homeus),
    path('aboutus/',views.aboutus),
    path('servicesus/',views.servicesus),
    path('pymnt/',views.pymnt),
    path('pyt/',views.pyt),
    path('p_details/',views.p_details),
    path('avb/',views.avb),
    path('updateroom/',views.updateroom),
    path('update/',views.update),

]
