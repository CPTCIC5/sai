# Generated by Django 3.2.8 on 2022-01-19 16:14

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Alumni',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('enrollment_no', models.CharField(max_length=50)),
                ('name', models.CharField(max_length=50)),
                ('father_name', models.CharField(max_length=50)),
                ('course', models.CharField(max_length=50)),
                ('specialization', models.CharField(max_length=50)),
                ('academic_year', models.CharField(max_length=50)),
                ('year_of_passing', models.IntegerField()),
            ],
        ),
    ]