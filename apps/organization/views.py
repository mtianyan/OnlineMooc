# encoding: utf-8
from django.db.models import Q
from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import View
# Create your views here.
from courses.models import Course
from operation.models import UserFavorite
from organization.forms import UserAskForm
from .models import CourseOrg, CityDict, Teacher
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

class OrgView(View):
    def get(self,request):
        # 查找到所有的课程机构
        all_orgs = CourseOrg.objects.all()

        # 热门机构,如果不加负号会是有小到大。
        hot_orgs = all_orgs.order_by("-click_nums")[:3]
        # 搜索功能
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            # 在name字段进行操作,做like语句的操作。i代表不区分大小写
            # or操作使用Q
            all_orgs = all_orgs.filter(Q(name__icontains=search_keywords) | Q(desc__icontains=search_keywords) | Q(
                address__icontains=search_keywords))
        # 取出所有的城市
        all_city = CityDict.objects.all()

        # 取出筛选的城市,默认值为空
        city_id = request.GET.get('city', "")
        # 如果选择了某个城市,也就是前端传过来了值
        if city_id:
            # 外键city在数据中叫city_id
            # 我们就在机构中作进一步筛选
            all_orgs = all_orgs.filter(city_id=int(city_id))

        # 类别筛选
        category = request.GET.get('ct', "")
        if category:
            # 我们就在机构中作进一步筛选类别
            all_orgs = all_orgs.filter(category=category)

        # 进行排序
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "students":
                all_orgs = all_orgs.order_by("-students")
            elif sort == "courses":
                all_orgs = all_orgs.order_by("-course_nums")






        # 总共有多少家机构使用count进行统计
        org_nums = all_orgs.count()
        # 对课程机构进行分页
        # 尝试获取前台get请求传递过来的page参数
        # 如果是不合法的配置参数默认返回第一页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # 这里指从allorg中取五个出来，每页显示5个
        p = Paginator(all_orgs, 4, request=request)
        orgs = p.page(page)

        return render(request, "org-list.html", {
            "all_orgs":orgs,
            "all_city": all_city,
            "org_nums": org_nums,
            "city_id":city_id,
            "category":category,
            "hot_orgs":hot_orgs,
            "sort": sort,
            "search_keywords": search_keywords,
        })

class AddUserAskView(View):
    """
    用户添加咨询
    """
    def post(self, request):
        userask_form = UserAskForm(request.POST)
        if userask_form.is_valid():
            user_ask = userask_form.save(commit=True)
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse('{"status":"fail", "msg":"您的字段有错误,请检查"}', content_type='application/json')

class OrgHomeView(View):
    """
   机构首页
    """
    def get(self, request, org_id):
        # 向前端传值，表明现在在home页
        current_page = "home"
        # 根据id取到课程机构
        course_org = CourseOrg.objects.get(id= int(org_id))
        course_org.click_nums +=1
        course_org.save()
        # 向前端传值说明用户是否收藏
        has_fav = False
        # 必须是用户已登录我们才需要判断。
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        # 通过课程机构找到课程。内建的变量，找到指向这个字段的外键引用
        all_courses = course_org.course_set.all()[:4]
        all_teacher = course_org.teacher_set.all()[:2]

        return render(request, 'org-detail-homepage.html',{
           'all_courses':all_courses,
            'all_teacher':all_teacher,
            'course_org': course_org,
            "current_page":current_page,
            "has_fav": has_fav
        })

class OrgCourseView(View):
    """
   机构课程列表页
    """
    def get(self, request, org_id):
        # 向前端传值，表明现在在home页
        current_page = "course"
        # 根据id取到课程机构
        course_org = CourseOrg.objects.get(id= int(org_id))
        # 通过课程机构找到课程。内建的变量，找到指向这个字段的外键引用
        all_courses = course_org.course_set.all()
        # 向前端传值说明用户是否收藏
        has_fav = False
        # 必须是用户已登录我们才需要判断。
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        return render(request, 'org-detail-course.html',{
           'all_courses':all_courses,
            'course_org': course_org,
            "current_page":current_page,
            "has_fav":has_fav,
        })

class OrgDescView(View):
    """
   机构描述详情页
    """
    def get(self, request, org_id):
        # 向前端传值，表明现在在home页
        current_page = "desc"
        # 根据id取到课程机构
        course_org = CourseOrg.objects.get(id= int(org_id))
        # 通过课程机构找到课程。内建的变量，找到指向这个字段的外键引用
        # 向前端传值说明用户是否收藏
        has_fav = False
        # 必须是用户已登录我们才需要判断。
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        return render(request, 'org-detail-desc.html',{
            'course_org': course_org,
            "current_page":current_page,
            "has_fav":has_fav,
        })

class OrgTeacherView(View):
    """
   机构讲师列表页
    """
    def get(self, request, org_id):
        # 向前端传值，表明现在在home页
        current_page = "teacher"
        # 根据id取到课程机构
        course_org = CourseOrg.objects.get(id= int(org_id))
        # 通过课程机构找到课程。内建的变量，找到指向这个字段的外键引用
        all_teachers = course_org.teacher_set.all()
        # 向前端传值说明用户是否收藏
        has_fav = False
        # 必须是用户已登录我们才需要判断。
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        return render(request, 'org-detail-teachers.html',{
           'all_teachers':all_teachers,
            'course_org': course_org,
            "current_page":current_page,
            "has_fav":has_fav
        })


class AddFavView(View):
    """
    用户收藏与取消收藏功能
    """
    def post(self, request):
        # 表明你收藏的不管是课程，讲师，还是机构。他们的id
        # 默认值取0是因为空串转int报错
        id = request.POST.get('fav_id', 0)
        # 取到你收藏的类别，从前台提交的ajax请求中取
        type = request.POST.get('fav_type', 0)

        # 收藏与已收藏取消收藏
        # 判断用户是否登录:即使没登录会有一个匿名的user
        if not request.user.is_authenticated:
            # 未登录时返回json提示未登录，跳转到登录页面是在ajax中做的
            return HttpResponse('{"status":"fail", "msg":"用户未登录"}', content_type='application/json')
        exist_records = UserFavorite.objects.filter(user=request.user, fav_id=int(id), fav_type=int(type))
        if exist_records:
            # 如果记录已经存在， 则表示用户取消收藏
            exist_records.delete()
            if int(type) == 1:
                course = Course.objects.get(id=int(id))
                course.fav_nums -=1
                if course.fav_nums < 0:
                    course.fav_nums = 0
                course.save()
            elif int(type) == 2:
                org = CourseOrg.objects.get(id=int(id))
                org.fav_nums -= 1
                if org.fav_nums < 0:
                    org.fav_nums = 0
                org.save()
            elif int(type) == 3:
                teacher = Teacher.objects.get(id=int(id))
                teacher.fav_nums -=1
                if teacher.fav_nums < 0:
                    teacher.fav_nums = 0
                teacher.save()

            return HttpResponse('{"status":"success", "msg":"收藏"}', content_type='application/json')
        else:
            user_fav = UserFavorite()
            # 过滤掉未取到fav_id type的默认情况
            if int(type) >0 and int(id) >0:
                user_fav.fav_id = int(id)
                user_fav.fav_type = int(type)
                user_fav.user = request.user
                user_fav.save()

                if int(type) == 1:
                    course = Course.objects.get(id=int(id))
                    course.fav_nums += 1
                    course.save()
                elif int(type) == 2:
                    org = CourseOrg.objects.get(id=int(id))
                    org.fav_nums += 1
                    org.save()
                elif int(type) == 3:
                    teacher = Teacher.objects.get(id=int(id))
                    teacher.fav_nums += 1
                    teacher.save()
                return HttpResponse('{"status":"success", "msg":"已收藏"}', content_type='application/json')
            else:
                return HttpResponse('{"status":"fail", "msg":"收藏出错"}', content_type='application/json')

# 课程讲师列表页
class TeacherListView(View):
        def get(self, request):
            all_teacher = Teacher.objects.all()
            sort = request.GET.get("sort", "")
            if sort:
                if sort == "hot":
                    all_teacher = all_teacher.order_by("-click_nums")

              # 搜索功能
            search_keywords = request.GET.get('keywords', '')
            if search_keywords:
                # 在name字段进行操作,做like语句的操作。i代表不区分大小写
                # or操作使用Q
                all_teacher = all_teacher.filter(
                    Q(name__icontains=search_keywords) | Q(work_company__icontains=search_keywords))

            # 排行榜讲师
            rank_teacher = Teacher.objects.all().order_by("-fav_nums")[:5]
            # 总共有多少老师使用count进行统计
            teacher_nums = all_teacher.count()
            # 对讲师进行分页
            # 尝试获取前台get请求传递过来的page参数
            # 如果是不合法的配置参数默认返回第一页
            try:
                page = request.GET.get('page', 1)
            except PageNotAnInteger:
                page = 1
            # 这里指从allorg中取五个出来，每页显示5个
            p = Paginator(all_teacher, 4, request=request)
            teachers = p.page(page)
            return render(request, "teachers-list.html", {
            "all_teacher":teachers,
            "teacher_nums":teacher_nums,
                "sort":sort,
                "rank_teachers":rank_teacher,
                "search_keywords": search_keywords,
            })

# 教师详情页面

class TeacherDetailView(View):
    def get(self, request, teacher_id):
        teacher = Teacher.objects.get(id = int(teacher_id))
        teacher.click_nums +=1
        teacher.save()
        all_course = teacher.course_set.all()
        # 排行榜讲师
        rank_teacher = Teacher.objects.all().order_by("-fav_nums")[:5]

        has_fav_teacher = False
        if UserFavorite.objects.filter(user=request.user, fav_type=3, fav_id= teacher.id):
            has_fav_teacher = True
        has_fav_org = False
        if  UserFavorite.objects.filter(user=request.user, fav_type=2, fav_id= teacher.org.id):
            has_fav_org = True
        return render(request, "teacher-detail.html", {
            "teacher":teacher,
            "all_course":all_course,
            "rank_teacher":rank_teacher,
            "has_fav_teacher":has_fav_teacher,
            "has_fav_org":has_fav_org,
        })
