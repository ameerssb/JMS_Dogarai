# Generated by Django 4.1.3 on 2022-12-28 13:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Journals', '0024_alter_articles_papers_info_domain_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='articles_papers_info',
            name='subdomain',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='paper_update_history',
            name='subdomain',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='publish_papers_info',
            name='subdomain',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='submit_papers_info',
            name='subdomain',
            field=models.CharField(blank=True, max_length=200),
        ),
    ]
