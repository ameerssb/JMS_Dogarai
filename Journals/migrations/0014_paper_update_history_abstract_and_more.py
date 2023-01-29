# Generated by Django 4.1.3 on 2022-12-25 16:27

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('Journals', '0013_remove_paper_update_history_created'),
    ]

    operations = [
        migrations.AddField(
            model_name='paper_update_history',
            name='abstract',
            field=models.CharField(default=None, max_length=4200),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='authors_name',
            field=models.CharField(default=None, max_length=3105),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='corres_emails',
            field=models.CharField(max_length=300, null=True),
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='cover_letter_pdf',
            field=models.FileField(blank=True, null=True, upload_to='papers_file/'),
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='created',
            field=models.DateTimeField(auto_created=True, auto_now_add=True, default=django.utils.timezone.now),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='keywords',
            field=models.CharField(default=None, max_length=4200),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='manuscript_pdf',
            field=models.FileField(blank=True, null=True, upload_to='papers_file/'),
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='paper_type',
            field=models.IntegerField(choices=[(0, 'Select'), (1, 'Research'), (2, 'Review')], default=None),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='subdomain',
            field=models.CharField(default='UNKNOWN', max_length=200),
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='supplimentary_file',
            field=models.FileField(blank=True, null=True, upload_to='papers_file/'),
        ),
        migrations.AddField(
            model_name='paper_update_history',
            name='title',
            field=models.CharField(default=None, max_length=600),
            preserve_default=False,
        ),
    ]
