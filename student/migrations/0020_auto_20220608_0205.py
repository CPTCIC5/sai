# Generated by Django 3.2.10 on 2022-06-07 20:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0019_auto_20220524_1611'),
    ]

    operations = [
        migrations.AddField(
            model_name='certificate',
            name='file',
            field=models.FileField(blank=True, null=True, upload_to=''),
        ),
        migrations.AlterField(
            model_name='idcard',
            name='title',
            field=models.CharField(blank=True, default='ST.ALOYSIUS INTERNATIONAL UNIVERSITY', max_length=100),
        ),
    ]
