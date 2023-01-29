# Generated by Django 4.1.3 on 2022-12-28 14:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Journals', '0025_alter_articles_papers_info_subdomain_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='paper_update_history',
            name='domain',
            field=models.CharField(choices=[('Select', 'Select'), ('Physical sciences and engineering', 'Physical Sciences And Engineering'), ('Life sciences', 'Life Sciences'), ('Health sciences', 'Health Sciences'), ('Social sciences and humanities', 'Social Sciences And Humanities'), ('Unknown', 'Unknown')], default='Select', max_length=200),
        ),
    ]
