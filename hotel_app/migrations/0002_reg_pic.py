# Generated by Django 3.1.5 on 2021-04-21 14:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hotel_app', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='reg',
            name='pic',
            field=models.ImageField(default=1, upload_to='pics'),
            preserve_default=False,
        ),
    ]
