# Generated by Django 3.2.10 on 2022-06-23 17:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0002_admitcard_certificate_idcard_resulthideunhide'),
    ]

    operations = [
        migrations.AlterField(
            model_name='apply',
            name='phone',
            field=models.CharField(max_length=100),
        ),
        migrations.AlterField(
            model_name='contact',
            name='phone',
            field=models.CharField(max_length=100),
        ),
    ]