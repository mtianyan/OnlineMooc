from rest_framework import serializers
from utils import str2Hump


class RenameRuleSerializer(serializers.ModelSerializer):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        for old_name in list(self.fields.keys()):
            new_name = str2Hump(old_name)
            if new_name != old_name:
                field = self.fields.pop(old_name)
                self.fields[new_name] = field