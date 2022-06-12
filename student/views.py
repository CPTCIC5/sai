import csv
from django.shortcuts import render,get_object_or_404
from student.models import *
from django.contrib import messages
from student.models import Contact
from django.http import HttpResponse
from django.http import HttpResponse
from django.template.loader import get_template
from xhtml2pdf import pisa
from django.db.models import Q

def home(request):
    return render(request, 'student/base.html')


def result(request):

    if request.method == 'POST':
        enrollment_no = request.POST.get('enrollment_no')
        # print(enrollment_no)
    
        try:
            profile = Profile.objects.get(enrollment_no=enrollment_no)

            sem = Semester.objects.filter(profile=profile)
            # print(sem)
            
            # TOTAL CALCULATION
            total_max_marks = 0
            total_min_marks = 0
            total_obtained_marks = 0
            
            for semester in sem:
                total_max_marks = semester.max_marks + total_max_marks
                total_min_marks = semester.min_marks + total_min_marks
                total_obtained_marks = semester.obtained + total_obtained_marks

                print(f"{semester}", semester.min_marks)
                print(f"{semester}", semester.max_marks)

            percentage = (total_obtained_marks/total_max_marks)*100
            student_percentage = round(percentage,2)

            # FINDING GRADE FOR STUDENT
            grade = "Fail"
            if student_percentage > 60:
                grade = "First Class"
            elif student_percentage > 50:
                grade = "Second Class"
            elif student_percentage > 35 and student_percentage < 50:
                grade = "Third Class"
            else:
                grade = "Fail"
            

            # # PERCENTAGE

            

            context = {'semesters':sem,'profile':profile,"total_max_marks": total_max_marks,"total_min_marks":total_min_marks,"total_obtained_marks":total_obtained_marks,'student_percentage':student_percentage,'grade':grade}


            return render(request, 'student/result.html', context)
        
        except Exception as e:
            messages.warning(request, 'Please enter correct enrollment number!!')

            return render(request, 'student/result.html')
    # messages.success(request, 'Your profile was updated.')
    return render(request, 'student/result.html')

def courses(request):
    return render(request, 'student/courses.html')



def home(request):
    return render(request, 'student/home.html')


def about(request):
    return render(request, 'student/about.html')


def faith(request):
    return render(request, 'student/faith.html')

def md_message(request):
    return render(request, 'student/md_message.html')



def health_science_courses(request):
    course_desc = Course_desc.objects.filter(branch="Health Science Courses")
    context = {'course_desc':course_desc}

    return render(request, 'student/health_science_courses.html',context)

def certificate(request):
    certificates=Certificate.objects.all()
    if request.method == 'POST':
        searched=request.POST.get('searched')
        try:
            queryset=Certificate.objects.filter(Q(enrollment_no__icontains=searched) | Q(center_id__icontains=searched))
            return render(request,'student/certificate.html',{'queryset':queryset,'searched':searched})
        except Exception as e:
            messages.warning(request,'Please enter valid Center ID or Name')
            return render(request,'student/certificate.html')
    return render(request,'student/certificate.html')

#def certificate
def certificate_render_pdf_view(request,en_no):
    template_path = 'student/pdf3.html'
    queryset=get_object_or_404(Certificate,enrollment_no=en_no)
    context = {'myvar': queryset}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    
    #if directly download
    #response['Content-Disposition'] = 'attachment; filename="report.pdf"'

    #if u want to open a proper pdf format
    response['Content-Disposition'] = 'filename="report.pdf"'

    # find the template and render it.
    template = get_template(template_path)
    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(
       html, dest=response)
    # if error then show some funny view
    if pisa_status.err:
       return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response


def engineering_courses(request):
    course_desc = Course_desc.objects.filter(branch="Engineering Courses")
    context = {'course_desc':course_desc}

    return render(request, 'student/engineering_courses.html',context)
    
def management_courses(request):
    course_desc = Course_desc.objects.filter(branch="Management Courses")
    context = {'course_desc':course_desc}

    return render(request, 'student/management_courses.html',context)

def certified_courses(request):
    course_desc = Course_desc.objects.filter(branch="Certified Courses")
    context = {'course_desc':course_desc}

    return render(request, 'student/certified_courses.html',context)

def home2(request):
    x1=ResultHideUnHide.objects.get(id=1)
    return render(request, 'student/home2.html',{'x1':x1})

def alumini(request):
    return render(request, 'student/alumini.html')

def academics(request):
    return render(request, 'student/academics.html')

def library(request):
    return render(request, 'student/library.html')

def research(request):
    return render(request, 'student/research.html')

def global_option(request):
    return render(request, 'student/global_option.html')

def student_life(request):
    return render(request, 'student/student_life.html')

def contact_us(request):
    if request.method == 'POST':
        contact = Contact()
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        phone = request.POST.get('phone')
        query = request.POST.get('query')        

        contact.name = name
        contact.email = email
        contact.subject = subject
        contact.phone = phone
        contact.query = query 
        contact.save()

        return HttpResponse("THANKS FOR CONTACTING US <br> <p><a href='/'> HOME </a> </p>")

    return render(request, 'student/contact_us.html')

def apply(request):
    if request.method =='POST':
        apply = Apply()
        name = request.POST.get('name')
        email = request.POST.get('email')
        phone = request.POST.get('phone')
        subject = request.POST.get('subject')
        query = request.POST.get('query')
        course = request.POST.get('course')

        apply.name = name
        apply.email = email
        apply.phone = phone
        apply.subject = subject
        apply.query = query
        apply.applying_for = course
        apply.save()

        return HttpResponse("THANKS FOR APPLYING FOR COURSES <br> <p><a href='/'> HOME </a> </p>")

    return render(request, 'student/apply.html')
    
def export(request):    
    profiles = Profile.objects.all()

    # field names
    fields = ['enrollment_no', 'name', 'father_name', 'course', 'specialization', 'academic_year', 'year_of_passing', 'particular', 'max_marks', 'min_marks', 'obtained', 'remarks']

    rows = []
    for profile in profiles:
        semesters = Semester.objects.filter(profile=profile)
        for semester in semesters:
            # data rows of csv file
            data = [profile.enrollment_no, profile.name, profile.father_name, profile.course, profile.specialization, profile.academic_year, profile.year_of_passing, semester.particular, semester.max_marks, semester.min_marks, semester.obtained, semester.remarks]

            rows.append(data)

    # writing to csv file
    response = HttpResponse(
        content_type='text/csv',
        headers={'Content-Disposition': 'attachment; filename="university_records.csv"'},
    )
    # creating a csv writer object
    csvwriter = csv.writer(response)
        
    # writing the fields
    csvwriter.writerow(fields)
        
    # writing the data rows
    csvwriter.writerows(rows)

    # return HttpResponse("done")
    return response

def import_data(request):
    # if request.method == "POST":
    #     my_uploaded_file = request.FILES['my_uploaded_file']
    #     print(my_uploaded_file)
        
        # reading csv file
        # data = pd.read_csv(my_uploaded_file)
        # print(data)
        # print(data['enrollment_no'], data['name'])
        # print(len(data['enrollment_no']))
        
        # for i in range(1, len(data)):
        # # for i in range(0, len(data)):
        #     print(i, data['enrollment_no'])
            # print(data[i])
            

        # return render(request, 'student/import.html')
        
    return render(request, 'student/import.html')



def admitcard(request):
    if request.method == 'POST':
        enrollment_no = request.POST.get('enrollment_no')
        print(enrollment_no)

        try:
            admitcard = AdmitCard.objects.get(enrollment_no=enrollment_no)
            return render(request,'student/admitcard.html',{'admitcard':admitcard})

        except Exception as e:
            messages.warning(request, 'Please enter correct enrollment number!!')
            return render(request, 'student/admitcard.html')
    return render(request,'student/admitcard.html')

def admit_render_pdf_view(request,en_no):
    template_path = 'student/pdf1.html'
    queryset=get_object_or_404(AdmitCard,enrollment_no=en_no)
    context = {'myvar': queryset}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    
    #if directly download
    #response['Content-Disposition'] = 'attachment; filename="report.pdf"'

    #if u want to open a proper pdf format
    response['Content-Disposition'] = 'filename="report.pdf"'

    # find the template and render it.
    template = get_template(template_path)
    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(
       html, dest=response)
    # if error then show some funny view
    if pisa_status.err:
       return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response

def idcard(request):
    if request.method == 'POST':
        enrollment_no = request.POST.get('enrollment_no')
        print(enrollment_no)

        try:
            idcard= IdCard.objects.get(enrollment_no=enrollment_no)
            return render(request,'student/idcard.html',{'idcard':idcard})

        except Exception as e:
            messages.warning(request, 'Please enter correct enrollment number!!')
            return render(request, 'student/idcard.html')
    return render(request,'student/idcard.html')


def idcard_render_pdf_view(request,en_no):
    template_path = 'student/pdf2.html'
    queryset=get_object_or_404(IdCard,enrollment_no=en_no)
    context = {'myvar': queryset}
    # Create a Django response object, and specify content_type as pdf
    response = HttpResponse(content_type='application/pdf')
    
    #if directly download
    #response['Content-Disposition'] = 'attachment; filename="report.pdf"'

    #if u want to open a proper pdf format
    response['Content-Disposition'] = 'filename="report.pdf"'

    # find the template and render it.
    template = get_template(template_path)
    html = template.render(context)

    # create a pdf
    pisa_status = pisa.CreatePDF(
       html, dest=response)
    # if error then show some funny view
    if pisa_status.err:
       return HttpResponse('We had some errors <pre>' + html + '</pre>')
    return response
    