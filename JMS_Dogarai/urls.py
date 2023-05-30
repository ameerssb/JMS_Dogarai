#from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from main import urls as mn
from journals import urls as js
from Authors import urls as au
from Editors import urls as ed
from Reviewers import urls as re
from django.contrib import admin
# from admin_interface.admin import Theme
# from admin_interface.admin import admin

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(mn)),
    path('journals/', include(js)),
    path('authors/', include(au)),
    path('editors/', include(ed)),
    path('reviewers/', include(re)),
]

if settings.DEBUG:
	urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


admin.site.site_title = "Bature Journals"

admin.site.index_title = "Bature Journals"

# admin.site.unregister(Theme)