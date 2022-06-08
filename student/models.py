from django.db import models

class Profile(models.Model):
    enrollment_no = models.CharField(max_length=50,unique=True)
    name = models.CharField(max_length=50)
    # image = models.ImageField(upload_to="Student/profile_image")
    father_name = models.CharField(max_length=50)
    course = models.CharField(max_length=50)
    specialization = models.CharField(max_length=50)
    academic_year = models.CharField(max_length=50)
    year_of_passing = models.IntegerField()
    profile_pic = models.ImageField(upload_to='uploads/student_images/',blank=True)
    

    def __str__(self):
        return self.name
    
class Semester(models.Model):

    REMARKS = (
        ('Pass','Pass'),
        ('Fail','Fail')
    )
    particular = models.CharField(max_length=100)
    profile = models.ForeignKey("student.Profile", on_delete=models.CASCADE)
    max_marks = models.IntegerField()
    min_marks = models.IntegerField()
    obtained = models.IntegerField()
    remarks = models.CharField(max_length=50,choices = REMARKS)

    def __str__(self):
        return f"{self.particular}"


class Contact(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    subject = models.CharField(max_length=100)
    phone = models.IntegerField()
    query = models.TextField()

    def __str__(self):
        return self.name
    

class Apply(models.Model):
    REMARKS = (
        ('Health Science Courses','Health Science Courses'),
        ('Engineering Courses','Engineering Courses'),
        ('Management Courses','Management Courses'),
        ('Certified Courses','Certified Courses'),
        ('Other Courses','Other Courses'),
    )

    name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.IntegerField()
    subject = models.CharField(max_length=100)
    applying_for = models.CharField(max_length=50,choices = REMARKS)
    query = models.TextField()

    def __str__(self):
        return self.name


class Course_desc(models.Model):
    REMARKS = (
        ('Health Science Courses','Health Science Courses'),
        ('Engineering Courses','Engineering Courses'),
        ('Management Courses','Management Courses'),
        ('Certified Courses','Certified Courses'),
    )

    title = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=100)
    pre_requisite = models.CharField(max_length=100)
    duration = models.CharField(max_length=100)
    fee = models.CharField(max_length=100)
    breif_desc = models.CharField(max_length=100)

    branch = models.CharField(max_length=50,choices = REMARKS)

    def __str__(self):
        return self.title
    



# class Semester_2(models.Model):

#     REMARKS = (
#         ('Pass','Pass'),
#         ('Fail','Fail')
#     )
#     particular = models.CharField(max_length=100)
#     profile = models.OneToOneField("student.Profile", on_delete=models.CASCADE)
#     max_marks = models.IntegerField()
#     min_marks = models.IntegerField()
#     obtained = models.IntegerField()
#     remarks = models.CharField(max_length=50,choices = REMARKS)

#     def __str__(self):
#         return f"Semester / Year-II"

# class Semester_3(models.Model):

#     REMARKS = (
#         ('Pass','Pass'),
#         ('Fail','Fail')
#     )
#     particular = models.CharField(max_length=100)
#     profile = models.OneToOneField("student.Profile", on_delete=models.CASCADE)
#     max_marks = models.IntegerField()
#     min_marks = models.IntegerField()
#     obtained = models.IntegerField()
#     remarks = models.CharField(max_length=50,choices = REMARKS)

#     def __str__(self):
#         return f"Semester / Year-III"

# class Semester_4(models.Model):

#     REMARKS = (
#         ('Pass','Pass'),
#         ('Fail','Fail')
#     )
#     particular = models.CharField(max_length=100)
#     profile = models.OneToOneField("student.Profile", on_delete=models.CASCADE)
#     max_marks = models.IntegerField()
#     min_marks = models.IntegerField()
#     obtained = models.IntegerField()
#     remarks = models.CharField(max_length=50,choices = REMARKS)

#     def __str__(self):
#         return f"Semester / Year-IV"

# class Semester_5(models.Model):

#     REMARKS = (
#         ('Pass','Pass'),
#         ('Fail','Fail')
#     )
#     particular = models.CharField(max_length=100)
#     profile = models.OneToOneField("student.Profile", on_delete=models.CASCADE)
#     max_marks = models.IntegerField()
#     min_marks = models.IntegerField()
#     obtained = models.IntegerField()
#     remarks = models.CharField(max_length=50,choices = REMARKS)

#     def __str__(self):
#         return f"Semester / Year-V"

# class Semester_6(models.Model):

#     REMARKS = (
#         ('Pass','Pass'),
#         ('Fail','Fail')
#     )
#     particular = models.CharField(max_length=100)
#     profile = models.OneToOneField("student.Profile", on_delete=models.CASCADE)
#     max_marks = models.IntegerField()
#     min_marks = models.IntegerField()
#     obtained = models.IntegerField()
#     remarks = models.CharField(max_length=50,choices = REMARKS)

#     def __str__(self):
#         return f"Semester / Year-VI"


# class Particular(models.Model):
#     SEMESTER_NO = (
#     ("I", "I"),
#     ("II", "II"),
#     ("III", "III"),
#     ("IV", "IV"),
#     ("V", "V"),
#     ("VI", "VI"),
#     )

#     REMARKS = (
#         ('Pass','Pass'),
#         ('Fail','Fail')
#     )

#     profile = models.ForeignKey("student.Profile", on_delete=models.CASCADE)
#     semester = models.CharField(max_length=50,choices = SEMESTER_NO)
#     max_marks = models.IntegerField()
#     min_marks = models.IntegerField()
#     obtained = models.IntegerField()
#     remarks = models.CharField(max_length=50,choices = REMARKS)

#     def __str__(self):
#         return self.semester    


class AdmitCard(models.Model):
    enrollment_no=models.CharField(max_length=40,unique=True)
    image=models.ImageField(upload_to='admitcard',blank=True)
    title=models.CharField(max_length=200)
    date=models.CharField(max_length=200)
    time=models.CharField(max_length=200)
    reg_no=models.CharField(max_length=200)
    name=models.CharField(max_length=200)
    paper=models.CharField(max_length=200)
    exam_centre=models.CharField(max_length=200)

    def __str__(self):
        return f"{self.enrollment_no} - {self.date}"

    class Meta:
        ordering=['-id']

class Certificate(models.Model):
    enrollment_no=models.CharField(max_length=40,unique=True)
    name=models.CharField(max_length=100)
    office_at=models.CharField(max_length=100)
    period_of=models.CharField(max_length=100)
    period_to=models.CharField(max_length=100)
    place=models.CharField(max_length=100)
    date=models.CharField(max_length=100)
    center_id=models.CharField(max_length=4,blank=False)
    file=models.FileField(blank=True,null=True)
    
    def __str__(self):
        return f"{self.enrollment_no} - {self.date}"

    class Meta:
        ordering=['-id']

class IdCard(models.Model):
    enrollment_no=models.CharField(max_length=40,unique=True)
    title=models.CharField(max_length=100,blank=True,default='ST.ALOYSIUS INTERNATIONAL UNIVERSITY')
    image=models.ImageField(upload_to='idcard',blank=True)
    name=models.CharField(max_length=100)
    fathers_name=models.CharField(max_length=100)
    dob=models.CharField(max_length=100)
    address=models.CharField(max_length=100)
    issuing_year=models.CharField(max_length=100)
    validity_year=models.CharField(max_length=100)

    def __str__(self):
        return f"{self.enrollment_no}"

    class Meta:
        ordering=['-id']