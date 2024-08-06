from .models import User
from django.views.generic import ListView
from django.utils.translation import gettext_lazy as _


class UsersListView(ListView):

    template_name = 'users/users.html'
    model = User
    context_object_name = 'users'
    extra_context = {
        'title': _('Users')
    }
