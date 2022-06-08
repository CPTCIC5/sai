# Generated by Django 4.0.1 on 2022-01-19 17:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Alumni',
            new_name='Profile',
        ),
        migrations.CreateModel(
            name='Particular',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('semester', models.CharField(choices=[('I', 'I'), ('II', 'II'), ('III', 'III'), ('IV', 'IV'), ('V', 'V'), ('VI', 'VI')], max_length=50)),
                ('max_marks', models.IntegerField()),
                ('min_marks', models.IntegerField()),
                ('obtained', models.IntegerField()),
                ('remarks', models.CharField(choices=[('Pass', 'Pass'), ('Fail', 'Fail')], max_length=50)),
                ('profile', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='student.profile')),
            ],
        ),
    ]