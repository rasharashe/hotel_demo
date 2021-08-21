from django.db import models
class reg(models.Model):
	name=models.CharField(max_length=100,default='')
	email=models.CharField(max_length=100,default='')
	password=models.CharField(max_length=100,default='')
	phone=models.CharField(max_length=100,default='')
	pic=models.ImageField(upload_to='pics')
	usertype=models.CharField(max_length=100,default='user')
	status=models.CharField(max_length=100,default='approved')

class rm(models.Model):
	r_num=models.CharField(max_length=100,default='')
	b_type=models.CharField(max_length=100,default='')
	ac=models.CharField(max_length=100,default='')
	price=models.CharField(max_length=100,default='')
	des=models.CharField(max_length=100,default='')
	r_pic=models.ImageField(upload_to='room_pic')
	book=models.CharField(max_length=100,default='Available')


class bk(models.Model):
	rg1=models.ForeignKey(reg,on_delete=models.CASCADE)
	rm1=models.ForeignKey(rm,on_delete=models.CASCADE)
	p_num=models.CharField(max_length=100,default='')
	c_num=models.CharField(max_length=100,default='')
	date_in=models.CharField(max_length=100,default='')
	date_out=models.CharField(max_length=100,default='')
	rm_num=models.CharField(max_length=100,default='')
	status=models.CharField(max_length=100,default='pending')
	total=models.CharField(max_length=100,default='')

class pt(models.Model):
	rg1=models.ForeignKey(reg,on_delete=models.CASCADE)
	rm1=models.ForeignKey(rm,on_delete=models.CASCADE)
	bk1=models.ForeignKey(bk,on_delete=models.CASCADE)
	Payment=models.CharField(max_length=100,default='Paid')




# Create your models here.
