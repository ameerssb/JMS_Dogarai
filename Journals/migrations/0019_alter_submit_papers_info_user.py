# Generated by Django 4.1.3 on 2022-12-26 23:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Main', '0013_alter_relate_designation'),
        ('Journals', '0018_paper_reviewers_review_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='submit_papers_info',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='Main.author'),
        ),
    ]
