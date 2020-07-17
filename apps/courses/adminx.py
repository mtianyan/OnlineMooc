from .models import Course, Lesson, Video, CourseResource
import xadmin


# Course的admin管理器
# 课程直接添加章节
class LessonInline(object):
    model = Lesson
    extra = 0


class CourseAdmin(object):
    list_display = ['name', 'desc', 'detail',
                    'degree',
                    'learn_times',
                    'students']
    search_fields = ['name', 'desc', 'detail', 'degree', 'students']
    list_filter = [
        'name',
        'desc',
        'detail',
        'degree',
        'learn_times',
        'students']
    # 富文本
    style_fields = {"detail": "ueditor"}
    # 课程直接添加章节
    inlines = [LessonInline]


class LessonAdmin(object):
    fields = ['course', 'name', 'add_time']
    list_display = ['course', 'name', 'add_time']
    search_fields = ['course__name', 'name']
    # __name代表使用外键中name字段
    list_filter = ['course', 'name', 'add_time']


class VideoAdmin(object):
    list_display = ['lesson', 'name', 'add_time']
    search_fields = ['lesson__name', 'name']
    list_filter = ['lesson', 'name', 'add_time']


class CourseResourceAdmin(object):
    list_display = ['course', 'name', 'download', 'add_time']
    search_fields = ['course__name', 'name', 'download']
    list_filter = ['course', 'name', 'download', 'add_time']


# 将管理器与model进行注册关联
xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)
