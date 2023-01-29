# Generated by Django 4.1.3 on 2022-12-30 20:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Main', '0017_editor'),
    ]

    operations = [
        migrations.AddField(
            model_name='editor',
            name='domain',
            field=models.CharField(choices=[('Select', 'Select'), ('Physical sciences and engineering', 'Physical Sciences And Engineering'), ('Life sciences', 'Life Sciences'), ('Health sciences', 'Health Sciences'), ('Social sciences and humanities', 'Social Sciences And Humanities'), ('Unknown', 'Unknown')], default='Select', max_length=200),
        ),
        migrations.AddField(
            model_name='editor',
            name='subdomain',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='reviewer',
            name='domain',
            field=models.CharField(choices=[('Select', 'Select'), ('Physical sciences and engineering', 'Physical Sciences And Engineering'), ('Life sciences', 'Life Sciences'), ('Health sciences', 'Health Sciences'), ('Social sciences and humanities', 'Social Sciences And Humanities'), ('Unknown', 'Unknown')], default='Select', max_length=200),
        ),
        migrations.AddField(
            model_name='reviewer',
            name='subdomain',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
    ]
