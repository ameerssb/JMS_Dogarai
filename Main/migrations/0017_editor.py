# Generated by Django 4.1.3 on 2022-12-28 11:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Main', '0016_remove_associateeditor_relate_ptr_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Editor',
            fields=[
                ('relate_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='Main.relate')),
                ('is_associate_editor_accepted', models.BooleanField(default=False)),
                ('is_main_editor_accepted', models.BooleanField(default=False)),
            ],
            bases=('Main.relate',),
        ),
    ]
