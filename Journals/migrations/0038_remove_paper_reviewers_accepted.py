# Generated by Django 4.1.3 on 2022-12-31 05:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Journals', '0037_alter_paper_reviewers_reviewer'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='paper_reviewers',
            name='accepted',
        ),
    ]
