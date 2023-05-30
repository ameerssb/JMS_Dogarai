from django.contrib import admin
from .models import User,Relate,Reviewer,Author,Editor
# Register your models here.

class UserAdmin(admin.ModelAdmin):
    exclude = ('user',)
    def save_model(self, request, obj, form, change):
        obj.pk = request.user.id
        super().save_model(request, obj, form, change)

admin.site.register(User,UserAdmin)
admin.site.register(Author)
admin.site.register(Relate)
admin.site.register(Reviewer)
admin.site.register(Editor)