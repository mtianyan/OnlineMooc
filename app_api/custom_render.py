from rest_framework.renderers import JSONRenderer


class MyJSONRenderer(JSONRenderer):

    def render(self, data, accepted_media_type=None, renderer_context=None):
        ret_data = {'code': 0,
                    "msg": "success"}
        if data:
            ret_data["data"] = data
        else:
            pass
        return super(MyJSONRenderer, self).render(ret_data, accepted_media_type, renderer_context)
