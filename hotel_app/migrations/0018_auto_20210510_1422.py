# Generated by Django 3.1.5 on 2021-05-10 08:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hotel_app', '0017_auto_20210507_1418'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reg',
            name='status',
            field=models.CharField(default='approved', max_length=100),
        ),
    ]
