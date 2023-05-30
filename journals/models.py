from django.db import models
from django.conf import settings
from datetime import datetime
from main.models import User,Reviewer,Author,Editor
# Create your models here.


class Submit_Papers_Info(models.Model):
    user=models.ForeignKey(User,on_delete=models.DO_NOTHING)    
    title = models.CharField(max_length=600,null=False,blank=False)
    abstract = models.CharField(max_length=4200,null=False,blank=False)
    keywords = models.CharField(max_length=4200,null=False,blank=False)
    authors_name = models.CharField(max_length=3105,null=False,blank=False)    
    corres_emails = models.CharField(max_length=300,null=True,blank=False)    
    version = models.IntegerField(default=0)
    status = models.CharField(max_length=50,default="Submitted")
    class pay(models.TextChoices):
        paid = 'Paid'
        unpaid = 'Unpaid'
    payment = models.CharField(choices=pay.choices, max_length=10,default="Unpaid")
    reference_number = models.CharField(max_length=30,)
    reference_url = models.CharField(max_length=255,)    
    views = models.IntegerField(default=0)
    download = models.IntegerField(default=0)
    created = models.DateTimeField(auto_now_add=True,auto_created=True)
    updated = models.DateTimeField(auto_now=True,auto_created=True)
    is_submitted = models.BooleanField(default=False)
    class Type(models.IntegerChoices):
        Select = 0
        research = 1
        review = 2
    paper_type = models.IntegerField(choices=Type.choices)    
    manuscript_pdf = models.FileField(upload_to='papers_file/',null=True,blank=True)
    cover_letter_pdf = models.FileField(upload_to='papers_file/',null=True,blank=True)
    supplimentary_file = models.FileField(upload_to='papers_file/',null=True,blank=True)
    class DOMAINS(models.TextChoices):
        Select = 'Select'
        Physical_sciences_and_engineering = 'Physical sciences and engineering'
        Life_sciences = 'Life sciences'
        Health_sciences = 'Health sciences'
        Social_sciences_and_humanities = 'Social sciences and humanities'
        Unknown = 'Unknown'
    domain = models.CharField(choices=DOMAINS.choices, default="Select", max_length=200)    
    subdomain = models.CharField(max_length=200,blank=True,null=True)
    
    def __str__(self):
        return self.title


class Paper_Update_History(models.Model):
    paper = models.ForeignKey(Submit_Papers_Info,on_delete=models.DO_NOTHING)
    title = models.CharField(max_length=600,null=False,blank=False)
    abstract = models.CharField(max_length=4200,null=False,blank=False)
    keywords = models.CharField(max_length=4200,null=False,blank=False)
    authors_name = models.CharField(max_length=3105,null=False,blank=False)    
    corres_emails = models.CharField(max_length=300,null=True,blank=False)
    version = models.IntegerField(default=0)
    created = models.DateTimeField(auto_now_add=True,auto_created=True)
    class Type(models.IntegerChoices):
        Select = 0
        research = 1
        review = 2
    paper_type = models.IntegerField(choices=Type.choices)    
    manuscript_pdf = models.FileField(upload_to='papers_file/',null=True,blank=True)
    cover_letter_pdf = models.FileField(upload_to='papers_file/',null=True,blank=True)
    supplimentary_file = models.FileField(upload_to='papers_file/',null=True,blank=True)
    class DOMAINS(models.TextChoices):
        Select = 'Select'
        Physical_sciences_and_engineering = 'Physical sciences and engineering'
        Life_sciences = 'Life sciences'
        Health_sciences = 'Health sciences'
        Social_sciences_and_humanities = 'Social sciences and humanities'
        Unknown = 'Unknown'
    domain = models.CharField(choices=DOMAINS.choices, default="Select", max_length=200)
    subdomain = models.CharField(max_length=200,blank=True,null=True)

    def __str__(self):
        return self.title


class Paper_Comments(models.Model):
    paper = models.ForeignKey(Submit_Papers_Info,on_delete=models.CASCADE)
    reviewer = models.ForeignKey(User,on_delete=models.CASCADE)
    comment = models.TextField(blank=False,null=False)
    version = models.IntegerField(default=0)
    created = models.DateTimeField(auto_now_add=True,auto_created=True)
    supplimentary_file = models.FileField(upload_to='papers_file/comments_file/',null=True,blank=True)
    def __str__(self):
        return self.paper


class Paper_Reviewers(models.Model):
    editor = models.ForeignKey(User,on_delete=models.DO_NOTHING, related_name='paper_editor')
    reviewer = models.ForeignKey(User,on_delete=models.DO_NOTHING)
    paper = models.ForeignKey(Submit_Papers_Info,on_delete=models.DO_NOTHING)
    created = models.DateTimeField(auto_now_add=True,auto_created=True)
    updated = models.DateTimeField(auto_now=True,auto_created=True)
    review_status = models.CharField(max_length=100,default="No Decision")
    
    def __str__(self):
        return self.paper


class Paper_Editors(models.Model):
    editor = models.ForeignKey(User,on_delete=models.DO_NOTHING)
    paper = models.ForeignKey(Submit_Papers_Info,on_delete=models.DO_NOTHING)
    created = models.DateTimeField(auto_now_add=True,auto_created=True)
    updated = models.DateTimeField(auto_now=True,auto_created=True)
    
    def __str__(self):
        return self.editor


class Publish_Papers_Info(models.Model):
    user=models.ForeignKey(settings.AUTH_USER_MODEL,on_delete=models.CASCADE,null=True)    
    uid = models.CharField(max_length=8,null=False,primary_key=True)
    title = models.CharField(max_length=337,null=False)
    doi = models.CharField(max_length=59,null=True,default='Null')
    pmcid = models.CharField(max_length=10,null=True,default='Null')
    pubmed_id = models.IntegerField(null=True, default=0)
    licensee = models.CharField(max_length=11,null=True,default='Null')
    abstract = models.CharField(max_length=4127,null=False)
    publish_time = models.DateField(default=datetime.now)
    authors = models.CharField(max_length=3105,null=False)
    journal = models.CharField(max_length=55,null=False)
    pdf_json_files = models.CharField(max_length=430,null=True,default='Null')
    pmc_json_files = models.CharField(max_length=44,null=True,default='Null')
    url = models.CharField(max_length=87,null=False)
    pdf = models.FileField(upload_to='papers_file/',null=True)
    views = models.IntegerField(default=0)
    download = models.IntegerField(default=0)
    class DOMAINS(models.TextChoices):
        Select = 'Select'
        Physical_sciences_and_engineering = 'Physical sciences and engineering'
        Life_sciences = 'Life sciences'
        Health_sciences = 'Health sciences'
        Social_sciences_and_humanities = 'Social sciences and humanities'
        Unknown = 'Unknown'
    domain = models.CharField(choices=DOMAINS.choices, default="Select", max_length=200)    
    subdomain = models.CharField(max_length=200,blank=True,null=True)
    
    def __str__(self):
        return self.title


class Articles_Papers_Info(models.Model):
    user=models.ForeignKey(settings.AUTH_USER_MODEL,on_delete=models.CASCADE,null=True)
    uid = models.DecimalField(max_digits=7,decimal_places=3,null=False,primary_key=True)
    submitter = models.CharField(max_length=34,null=True,default='Null')
    authors = models.CharField(max_length=600,null=False)
    title = models.CharField(max_length=400,null=False)
    comments = models.CharField(max_length=600,null=True,default='Null')
    journal = models.CharField(max_length=250,null=False)
    doi = models.CharField(max_length=150,null=True,default='Null')
    categories = models.CharField(max_length=100,null=False)
    abstract = models.CharField(max_length=4500,null=False)
    versions = models.CharField(max_length=1000,null=True,default='Null')
    publish_time = models.DateField(default=datetime.now)
    authors_parsed = models.CharField(max_length=2000,null=True,default='Null')
    pdf = models.FileField(upload_to='papers_file/',null=True)
    views = models.IntegerField(default=0)
    download = models.IntegerField(default=0)
    class DOMAINS(models.TextChoices):
        Select = 'Select'
        Physical_sciences_and_engineering = 'Physical sciences and engineering'
        Life_sciences = 'Life sciences'
        Health_sciences = 'Health sciences'
        Social_sciences_and_humanities = 'Social sciences and humanities'
        Unknown = 'Unknown'
    domain = models.CharField(choices=DOMAINS.choices, default="Select", max_length=200)    
    subdomain = models.CharField(max_length=200,blank=True,null=True)

    def __str__(self):
        return self.title

