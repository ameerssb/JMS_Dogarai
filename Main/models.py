from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.


class User(AbstractUser):
	first_name = models.CharField(blank=False,null=False, max_length=50)
	last_name = models.CharField(blank=False,null=False, max_length=50)
#	other_name = models.CharField(blank=True,null=False, max_length=50)
	email = models.EmailField(unique=True)
	is_active = models.BooleanField(default=True)
	Verified = models.BooleanField(default=True)
	is_email_verified = models.BooleanField(default=False)
	username = models.CharField(unique=False,max_length=30,blank=True)
#	phone = models.CharField(max_length=15, blank=True)
#	image=models.ImageField(upload_to='users/', null=True, default='default_user.png')
#	is_phone_verified = models.BooleanField(default=False)
#	date_of_birth = models.DateField(null=True, blank=True)
	class Gender(models.TextChoices):
		SELECT = 'SELECT'
		MALE = 'MALE'
		FEMALE = 'FEMALE'
		UNSPECIFIED = 'PREFERRED NOT TO SAY'
	gender = models.CharField(choices=Gender.choices, default="Select", max_length=20)
	created = models.DateTimeField(auto_now_add=True,auto_created=True)
	updated = models.DateTimeField(auto_now=True,auto_created=True)
	USERNAME_FIELD = 'email'
	REQUIRED_FIELDS = ['first_name','last_name','username']

class Relate(models.Model):
	user = models.OneToOneField(User,on_delete=models.CASCADE,primary_key=True)
	class Designation(models.TextChoices):
		SELECT = 'Select'
		PROFESSOR = 'Professor'
		ASSOCIATE_PROFESSOR = 'Associate Professor'
		ASSTISTANT_PROFESSOR = 'Assistant Professor'
		Dr = 'Dr.'
		LECTURER = 'Lecturer'
		STUDENT = 'Student'
	designation = models.CharField(choices=Designation.choices, default="Select", max_length=25)
	institution = models.CharField(max_length=300,blank=True)
	country = models.CharField(max_length=200,blank=False)
	address = models.TextField(blank=False)
	state = models.CharField(max_length=200,blank=True)
	city = models.CharField(max_length=200,blank=True)
	mobile = models.CharField(max_length=20, blank=True)
	created = models.DateTimeField(auto_created=True,auto_now_add=True)

class Author(Relate):
	is_author_accepted = models.BooleanField(default=False)

class Reviewer(Relate):
	is_reviewer_accepted = models.BooleanField(default=False)
	class DOMAINS(models.TextChoices):
		Select = 'Select'
		Physical_sciences_and_engineering = 'Physical sciences and engineering'
		Life_sciences = 'Life sciences'
		Health_sciences = 'Health sciences'
		Social_sciences_and_humanities = 'Social sciences and humanities'
		Unknown = 'Unknown'
	domain = models.CharField(choices=DOMAINS.choices, default="Select", max_length=200)    
	subdomain = models.CharField(max_length=200,blank=False,null=False)
	area = models.CharField(max_length=1000,blank=False,null=False)

class Editor(Relate):
	is_associate_editor_accepted = models.BooleanField(default=False)
	is_main_editor_accepted = models.BooleanField(default=False)
	class DOMAINS(models.TextChoices):
		Select = 'Select'
		Physical_sciences_and_engineering = 'Physical sciences and engineering'
		Life_sciences = 'Life sciences'
		Health_sciences = 'Health sciences'
		Social_sciences_and_humanities = 'Social sciences and humanities'
		Unknown = 'Unknown'
	domain = models.CharField(choices=DOMAINS.choices, default="Select", max_length=200)    
	subdomain = models.CharField(max_length=200,blank=False,null=False)
	area = models.CharField(max_length=1000,blank=False,null=False)
