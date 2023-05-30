from django.forms import ModelForm
from  journals.models import Submit_Papers_Info,Paper_Update_History,Paper_Reviewers
from main.models import Editor

class EditorForm(ModelForm):
    class Meta:
        model = Editor
        exclude = ['user','is_associate_editor_accepted','is_main_editor_accepted',]
#        fields = '__all__'

class Paper_Reviewers_Form(ModelForm):
    class Meta:
        model = Paper_Reviewers
        fields = ['reviewer']
#        exclude = ['user','accepted','review_status','paper']