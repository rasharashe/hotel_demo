# Generated by Django 3.1.5 on 2021-04-27 08:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hotel_app', '0008_bk_rm_num'),
    ]

    operations = [
        migrations.AddField(
            model_name='rm',
            name='book',
            field=models.CharField(default='Available', max_length=100),
        ),
    ]
