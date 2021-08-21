from django.shortcuts import render
from hotel_app.models import *
from django.contrib.auth import logout
from django.http import HttpResponseRedirect

def index(request):
	return render(request,'index.html')
def contact(request):
	return render(request,'contact.html')
def about(request):
	return render(request,'about.html')
def room(request):
	b=rm.objects.all().order_by('r_num')[:2]
	c=rm.objects.all().order_by('r_num')[2:]
	return render(request,'room.html',{'b':b,'c':c})
def services(request):
	return render(request,'services.html')
def registration(request):
	if request.method=='POST':
		name=request.POST['name']
		phone=request.POST['phone']
		email=request.POST['email']
		password=request.POST['password']
		if reg.objects.all().filter(email=email):
			return render(request,'registration.html',{'msg':'email already exist'})
		else:
			a=reg(name=name,email=email,phone=phone,password=password,pic='pics/OIP_1.jpg')
			a.save()
	return render(request,'registration.html')
def login(request):
	if request.method=='POST':
		email=request.POST['email']
		password=request.POST['password']
		d=reg.objects.all().filter(email=email,password=password,status='approved')
		if d:
			for x in d:
				request.session['loginid']=x.id
				c=x.usertype
				if c=='admin':
					return HttpResponseRedirect('/b_details/')
				
				else:
					return HttpResponseRedirect('/homeus/')
	return render(request,'login.html')

def out(request):
	if request.session.has_key('loginid'):
		del  request.session['loginid']
	logout(request)
	return render(request,'login.html')

def admin_aa(request):
	if request.session.has_key('loginid'):
		b=request.session['loginid']
		a=reg.objects.all().filter(id=b)
		return render(request,'admin.html',{'b':a})	
	else:
		return render(request,'login.html')
def admin_a(request):
	if request.session.has_key('loginid'):
		if request.method=='POST':
			img=request.FILES['img']
			idd=request.session['loginid']
			if reg.objects.all().filter(id=idd):
				image=reg.objects.get(id=idd) 
				image.pic=img
				image.save()
				b=reg.objects.all().filter(id=idd)
				return HttpResponseRedirect('/admin_aa/')
	else:
		return render(request,'login.html')
def user_a(request):
	if request.session.has_key('loginid'):
		if request.method=='POST':
			im=request.FILES['img']
			idd=request.session['loginid']
			if reg.objects.all().filter(id=idd):
				image=reg.objects.get(id=idd)
				image.pic=im
				image.save()
				b=reg.objects.all().filter(id=idd)
				return render(request,'user.html',{'u':b})
		return render(request,'user.html')	

	else:
		return render(request,'login.html')	

def user_aa(request):
	if request.session.has_key('loginid'):
		b=request.session['loginid']
		a=reg.objects.all().filter(id=b)
		return render(request,'user.html',{'u':a})	
	else:
		return render(request,'login.html')

def addroom(request):
	if request.session.has_key('loginid'):
		a=request.session['loginid']
		b=reg.objects.all().filter(id=a)
		return render(request,'addroom.html',{'b':b})	
	else:
		return render(request,'login.html')	
def add(request):
	if request.session.has_key('loginid'):
		if request.method=='POST':
			n=request.POST['number']
			b=request.POST['bedtype']
			a=request.POST['ac']
			r=request.POST['rate']
			i=request.FILES['img']
			d=request.POST['des']
			if rm.objects.all().filter(r_num=n):
				return render(request,'addroom.html',{'msg':'Room already exist'})
			else:
				a=rm(r_num=n,b_type=b,ac=a,price=r,des=d,r_pic=i)
				a.save()
				return render(request,'addroom.html')
	else:
		return render(request,'login.html')

def updateroom(request):
	if request.session.has_key('loginid'):
		a=request.session['loginid']
		b=reg.objects.all().filter(id=a)
		if request.method=='GET':
			c=request.GET['a']
			d=rm.objects.filter(id=c)
			return render(request,'updateroom.html',{'b':b,'c':d})	
	else:
		return render(request,'login.html')


def r_details(request):
	if request.session.has_key('loginid'):
		c=rm.objects.all().order_by('r_num')
		a=request.session['loginid']
		b=reg.objects.all().filter(id=a)
		return render(request,'r_details.html',{'c':c,'b':b})	
	else:
		return render(request,'login.html')

def update(request):
	if request.session.has_key('loginid'):
		if request.method=='POST':
			n=request.POST['number']
			b=request.POST['bedtype']
			a=request.POST['ac']
			r=request.POST['rate']
			i=request.FILES['img']
			d=request.POST['des']
			if rm.objects.all().filter(r_num=n):
				x=rm.objects.all().filter(r_num=n).update(r_num=n,b_type=b,ac=a,price=r,des=d)
				image=rm.objects.get(r_num=n)
				image.r_pic=i
				image.save()
				return HttpResponseRedirect('/r_details/')
	else:
		return render(request,'login.html')


def book(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['a']
			b=rm.objects.all().filter(id=a)
			return render(request,'book.html',{'b':b})
	else:
		return render(request,'login.html')
def roomus(request):
	if request.session.has_key('loginid'):
		a=rm.objects.all().filter(book='Available').order_by('r_num')[:2]
		d=rm.objects.all().filter(book='Available').order_by('r_num')[2:]
		c=request.session['loginid']
		b=reg.objects.filter(id=c)
		return render(request,'roomus.html',{'b':a,'u':b,'a':d})
	else:
		return render(request,'login.html')

def homeus(request):
	if request.session.has_key('loginid'):
		a=request.session['loginid']
		b=reg.objects.filter(id=a)
		return render(request,'homeus.html',{'u':b})
	else:
		return render(request,'login.html')

def aboutus(request):
	if request.session.has_key('loginid'):
		a=request.session['loginid']
		b=reg.objects.filter(id=a)
		return render(request,'aboutus.html',{'u':b})
	else:
		return render(request,'login.html')

def servicesus(request):
	if request.session.has_key('loginid'):
		a=request.session['loginid']
		b=reg.objects.filter(id=a)
		return render(request,'servicesus.html',{'u':b})
	else:
		return render(request,'login.html')


def booking(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['a']
			b=rm.objects.all().filter(id=a)
		return render(request,'booking.html',{'b':b})
	else:
		return render(request,'login.html')
from datetime import datetime
def booked(request):
	if request.session.has_key('loginid'):
		x=request.session['loginid']
		if request.method=='POST':
			a=request.POST['people']
			c=request.POST['child']
			i=request.POST['indate']
			o=request.POST['outdate']
			n=request.POST['num']
			r=reg.objects.get(id=x)
			m=rm.objects.get(r_num=n)
			dat='%Y-%m-%d'
			d=datetime.strptime(i,dat)
			t=datetime.strptime(o,dat)
			d1=t-d
			d2=d1.days
			d3=rm.objects.filter(r_num=n)
			for x in d3:
				price=x.price
			total=int(price)*int(d2)
			print(total)
			p=bk(p_num=a,c_num=c,date_in=i,date_out=o,rg1=r,rm1=m,rm_num=n,total=total)
			p.save()
			if rm.objects.all().filter(r_num=n):
				t=rm.objects.filter(r_num=n).update(book='Pending')
				return HttpResponseRedirect('/roomus/')
	else:
		return render(request,'login.html')
def remove(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['a']
			b=rm.objects.filter(id=a).delete()
			return HttpResponseRedirect('/r_details/')
	else:
		return render(request,'login.html')
from django.db.models import Q
def b_details(request):
	if request.session.has_key('loginid'):
		d=request.session['loginid']
		x=reg.objects.filter(id=d)
		a=bk.objects.all().filter(Q(status='pending'))
		c=bk.objects.all().filter(status='booked')
		return render(request,'b_details.html',{'y':a,'c':c,'b':x})
	else:
		return render(request,'login.html')

def approve(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['a']
			d=bk.objects.filter(id=a)
			for x in d:
				e=(x.rm1.id) 
			b=rm.objects.filter(id=e).update(book='Booked')
			c=bk.objects.filter(id=a).update(status='Booked')
			return HttpResponseRedirect('/b_details/')

def cancel(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['b']
			b=bk.objects.filter(id=a)
			for x in b:
				d=(x.rm1.id)
			c=bk.objects.filter(id=a).update(status='Cancelled')
			x=rm.objects.filter(id=d).update(book='Available')
			return HttpResponseRedirect('/b_details/')
	else:
				return render(request,'login.html')

def c_details(request):
	if request.session.has_key('loginid'):
		d=request.session['loginid']
		a_list = ['pending', 'Booked','Paid']
		b=reg.objects.filter(id=d)
		a=bk.objects.filter(rg1=d,status__in=a_list)
		if a:
			return render(request,'c_details.html',{'b':a,'u':b})
		return render(request,'c_details.html',{'u':b})
	else:
		return render(request,'login.html')
def cncl(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['a']
			b=bk.objects.filter(id=a)
			for x in b:
				d=(x.rm1.id)
			c=bk.objects.filter(id=a).update(status='Cancelled')
			x=rm.objects.filter(id=d).update(book='Available')
			return HttpResponseRedirect('/c_details/')
	else:
		return render(request,'login.html')		
def pymnt(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['a']
			b=bk.objects.filter(id=a)
			for x in b:
				d=(x.rg1.id)
			x=reg.objects.filter(id=d)
			return render(request,'payment.html',{'b':b,'c':x})
	else:
		return render(request,'login.html')

def pyt(request):
	if request.session.has_key('loginid'):
		x=request.session['loginid']
		print(x)
		if request.method=='POST':
			a=request.POST['i_d']
			b=request.POST['r_num']
			c=bk.objects.get(id=a)
			d=rm.objects.get(r_num=b)
			e=reg.objects.get(id=x)
			f=pt(rg1=e,rm1=d,bk1=c)
			f1=bk.objects.filter(id=a).update(status='Paid')
			f.save()
			return HttpResponseRedirect('/c_details/')
	else:
		return render(request,'login.html')


def p_details(request):
	if request.session.has_key('loginid'):
		a=pt.objects.filter(Payment='paid')
		x=request.session['loginid']
		b=reg.objects.all().filter(id=x)
		return render(request,'p_details.html',{'y':a,'b':b})
	else:
		return render(request,'login.html')


def avb(request):
	if request.session.has_key('loginid'):
		if request.method=='GET':
			a=request.GET['a']
			b=pt.objects.filter(id=a)
			for x in b:
				c=(x.rm1.id)
				d=(x.bk1.id)
			d1=pt.objects.filter(id=a).update(Payment='Checked out')
			d2=bk.objects.filter(id=d).update(status='Checked out')
			d1=rm.objects.filter(id=c).update(book='Available')
			return HttpResponseRedirect('/p_details/')

	else:
		return render(request,'login.html')




# Create your views here.
