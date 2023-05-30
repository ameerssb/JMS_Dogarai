from django.forms import ModelForm
from  journals.models import Submit_Papers_Info,Paper_Update_History
from main.models import Author

class NewForm(ModelForm):
    class Meta:
        model = Submit_Papers_Info
        fields = ['title','authors_name','keywords','corres_emails','abstract','paper_type','manuscript_pdf','supplimentary_file','domain','subdomain']
#        exclude = ['user','status','views','download','is_submitted','created','updated','domain','subdomain']
#        fields = '__all__'

class HistoryForm(ModelForm):
    class Meta:
        model = Paper_Update_History
        fields = ['title','authors_name','keywords','corres_emails','abstract','paper_type','manuscript_pdf','supplimentary_file','domain','subdomain']

class AuthorForm(ModelForm):
    class Meta:
        model = Author
        exclude = ['user','is_author_accepted']
#        fields = '__all__'