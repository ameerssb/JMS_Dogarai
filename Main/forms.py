from django.forms import ModelForm
from .models import User

class UserForm(ModelForm):
    class Meta:
        model = User
#        exclude = ['']
        fields = ['first_name','last_name','email','password']
