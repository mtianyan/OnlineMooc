from rest_framework.exceptions import ValidationError
from rest_framework.views import exception_handler


def custom_exception_handler(exc, context):
    response = exception_handler(exc, context)
    if isinstance(exc, ValidationError):
        response.data = {"fields_errors": response.data}
    else:
        response.data = {"none_fields_errors": response.data}
    return response
