# Generated by Django 4.1.3 on 2022-12-26 22:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Main', '0008_relate_address_relate_city_relate_mobile_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='relate',
            name='mobile',
            field=models.CharField(blank=True, max_length=20),
        ),
    ]
