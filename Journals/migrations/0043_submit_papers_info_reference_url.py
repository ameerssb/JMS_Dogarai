# Generated by Django 4.1.3 on 2023-01-27 21:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Journals', '0042_alter_submit_papers_info_payment'),
    ]

    operations = [
        migrations.AddField(
            model_name='submit_papers_info',
            name='reference_url',
            field=models.CharField(default=None, max_length=255),
            preserve_default=False,
        ),
    ]