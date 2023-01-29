from django.forms import ModelForm
from  Journals.models import Paper_Comments,Paper_Reviewers
from Main.models import Reviewer


class ReviewerForm(ModelForm):
    class Meta:
        model = Reviewer
        exclude = ['user','is_reviewer_accepted']
#        fields = '__all__'

class CommentsForm(ModelForm):
    class Meta:
        model = Paper_Comments
        fields = ['comment','supplimentary_file']

class Paper_Reviewers_Form(ModelForm):
    class Meta:
        model = Paper_Reviewers
        fields = ['reviewer']
#        exclude = ['user','accepted','review_status','paper']