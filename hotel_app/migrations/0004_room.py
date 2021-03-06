# Generated by Django 3.1.5 on 2021-04-25 17:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hotel_app', '0003_auto_20210422_1453'),
    ]

    operations = [
        migrations.CreateModel(
            name='room',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('r_num', models.CharField(default='', max_length=100)),
                ('b_type', models.CharField(default='', max_length=100)),
                ('ac', models.CharField(default='', max_length=100)),
                ('price', models.CharField(default='', max_length=100)),
                ('r_pic', models.ImageField(upload_to='room_pic')),
            ],
        ),
    ]
