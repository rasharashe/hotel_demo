# Generated by Django 3.1.5 on 2021-04-26 15:19

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('hotel_app', '0006_rm_des'),
    ]

    operations = [
        migrations.CreateModel(
            name='bk',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('p_num', models.CharField(default='', max_length=100)),
                ('c_num', models.CharField(default='', max_length=100)),
                ('date_in', models.CharField(default='', max_length=100)),
                ('date_out', models.CharField(default='', max_length=100)),
                ('rg1', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hotel_app.reg')),
                ('rm1', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='hotel_app.rm')),
            ],
        ),
    ]
