# Generated by Django 3.2.10 on 2022-05-20 05:22

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0015_admitcard_certificate_idcard'),
    ]

    operations = [
        migrations.AddField(
            model_name='idcard',
            name='name',
            field=models.CharField(default=django.utils.timezone.now, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='idcard',
            name='title',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]