#from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from Main import urls as mn
from Journals import urls as js
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


admin.site.site_title = "Ministry of Science, Technology and Innovation"

admin.site.index_title = "Ministry of Science, Technology and Innovation"

# admin.site.unregister(Theme)