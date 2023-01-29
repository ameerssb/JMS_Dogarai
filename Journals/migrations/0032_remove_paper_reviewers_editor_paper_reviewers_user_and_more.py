# Generated by Django 4.1.3 on 2022-12-30 14:29

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Journals', '0031_alter_paper_editors_editor_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='paper_reviewers',
            name='editor',
        ),
        migrations.AddField(
            model_name='paper_reviewers',
            name='user',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='paper_editors',
            name='editor',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
