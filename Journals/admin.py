from django.contrib import admin
from .models import Publish_Papers_Info,Articles_Papers_Info
# Register your models here.

class papers_infoAdmin(admin.ModelAdmin):
    exclude = ('user',)
    def save_model(self, request, obj, form, change):
        obj.user = request.user
        super().save_model(request, obj, form, change)

class articles_papers_infoAdmin(admin.ModelAdmin):
    exclude = ('user',)
    def save_model(self, request, obj, form, change):
        obj.user = request.user
        super().save_model(request, obj, form, change)

admin.site.register(Publish_Papers_Info,papers_infoAdmin)
admin.site.register(Articles_Papers_Info,articles_papers_infoAdmin)