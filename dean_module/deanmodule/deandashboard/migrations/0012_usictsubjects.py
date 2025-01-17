# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2018-03-27 20:42
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('deandashboard', '0011_auto_20180130_0356'),
    ]

    operations = [
        migrations.CreateModel(
            name='UsictSubjects',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('subject_code', models.CharField(max_length=20)),
                ('subject_name', models.CharField(max_length=100)),
                ('type_of_subject', models.CharField(db_column='type', max_length=15)),
                ('course', models.CharField(max_length=100)),
                ('stream', models.CharField(max_length=100)),
                ('semester', models.IntegerField()),
            ],
            options={
                'db_table': 'usict_subjects',
            },
        ),
    ]
