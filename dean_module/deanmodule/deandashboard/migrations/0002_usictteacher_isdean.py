# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-10-31 16:53
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deandashboard', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='usictteacher',
            name='isDean',
            field=models.BooleanField(default=False),
        ),
    ]