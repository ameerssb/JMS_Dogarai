# Generated by Django 4.1.3 on 2022-12-26 23:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Main', '0012_alter_relate_designation'),
    ]

    operations = [
        migrations.AlterField(
            model_name='relate',
            name='designation',
            field=models.CharField(choices=[('Select', 'Select'), ('Professor', 'Professor'), ('Associate Professor', 'Associate Professor'), ('Assistant Professor', 'Asstistant Professor'), ('Dr.', 'Dr'), ('Lecturer', 'Lecturer'), ('Student', 'Student')], default='Select', max_length=25),
        ),
    ]