from django.contrib import admin
from django.urls import path, include
from .views import (IndexView,
                    UserLogin,
                    Logout,
                    )

urlpatterns = [
    path('', IndexView.as_view(), name='homepage'),
    path('admin/', admin.site.urls),
    path('login/', UserLogin.as_view(), name='login'),
    path('logout/', Logout.as_view(), name='logout'),
    path('users/', include('task_manager.users.urls')),
    path('statuses/', include('task_manager.statuses.urls')),
    path('tasks/', include('task_manager.tasks.urls')),
    path('labels/', include('task_manager.labels.urls')),
]
