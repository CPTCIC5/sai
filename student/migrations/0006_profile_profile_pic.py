# Generated by Django 4.0.1 on 2022-01-25 12:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0005_semester_1_semester_2_semester_3_semester_4_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='profile_pic',
            field=models.ImageField(default=0, upload_to='uploads/student_images/'),
            preserve_default=False,
        ),
    ]
