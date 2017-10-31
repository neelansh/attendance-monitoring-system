from __future__ import unicode_literals

from django.db import models

class Sessions(models.Model):
    '''
    this model is managed by attendance system app
    DO NOT CHANGE
    '''
    session_id = models.CharField(primary_key=True, max_length=128)
    expires = models.IntegerField()
    data = models.TextField(blank=True, null=True)

    class Meta:
        # managed = False
        db_table = 'sessions'



class UsictAttendance(models.Model):
    subject_id = models.ForeignKey('UsictSubjectAllocation', on_delete = models.DO_NOTHING, db_column='subject_id', null=False)
    lecture_timestamp = models.DateTimeField(null = False)
    student = models.ForeignKey('UsictStudents', on_delete = models.DO_NOTHING, db_column='student', null = False)
    duration_of_class = models.IntegerField(null = False, blank = False)
    attendance = models.CharField(max_length = 2, null = False)

    class Meta:
        db_table = 'usict_attendance'
        unique_together = (("subject_id", "lecture_timestamp", "student"),)


class UsictBatchAllocation(models.Model):
    batch_id = models.IntegerField(primary_key=True)
    course = models.CharField(max_length=100, null=False)
    stream = models.CharField(max_length=100, null=False)
    semester = models.IntegerField(null=False)

    class Meta:
        db_table = 'usict_batch_allocation'

    def __str__(self):
        return  self.course + ' ' + self.stream + ' ' + str(self.semester)



class UsictStudents(models.Model):
    enrollment_no = models.BigIntegerField(primary_key=True)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100, blank=True, null=True)
    phone = models.CharField(max_length=100, blank=True, null=True)
    year_of_admission = models.IntegerField()
    password = models.CharField(max_length=600)
    course = models.CharField(max_length=100)
    stream = models.CharField(max_length=100)
    batch_id = models.ForeignKey('UsictBatchAllocation', on_delete=models.DO_NOTHING, db_column='batch_id',blank=True, null=True)#look

    class Meta:
        db_table = 'usict_students'

    def __str__(self):
        return self.name


class UsictSubjectAllocation(models.Model):
    subject_id = models.IntegerField(primary_key=True)
    batch_id = models.ForeignKey('UsictBatchAllocation', on_delete=models.DO_NOTHING, db_column='batch_id')
    subject_code = models.CharField(max_length=20)
    instructor_code = models.ForeignKey('UsictTeacher', on_delete=models.DO_NOTHING, db_column='instructor_code')
    subject_name = models.CharField(max_length=100)
    type_of_subject = models.CharField(max_length=15, db_column="type")
    # subject_id = models.IntegerField(blank=True, null=True)

    class Meta:
        db_table = 'usict_subject_allocation'

    def __str__(self):
        return self.subject_code

class UsictTeacher(models.Model):
    instructor_id = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100, blank=True, null=True)
    phone = models.CharField(max_length=100, blank=True, null=True)
    date_of_joining = models.CharField(max_length=25)
    password = models.CharField(max_length=200)
    designation = models.CharField(max_length=100)
    room_no = models.CharField(max_length=20, blank=True, null=True)
    isDean = models.BooleanField(default=False)

    class Meta:
        db_table = 'usict_teacher'

    def __str__(self):
        return self.name