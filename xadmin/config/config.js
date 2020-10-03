// https://umijs.org/config/
import {defineConfig} from 'umi';
import defaultSettings from './defaultSettings';
import proxy from './proxy';

const {REACT_APP_ENV} = process.env;
export default defineConfig({
    hash: true,
    antd: {},
    outputPath: `../templates/TyAdmin/`,
    publicPath: REACT_APP_ENV === 'dev' ? '/' : '/static/TyAdmin/',
    dva: {
        hmr: true,
    },
    locale: {
        // default zh-CN
        default: 'zh-CN',
        // default true, when it is true, will use `navigator.language` overwrite default
        antd: true,
        baseNavigator: true,
    },
    dynamicImport: {
        loading: '@/components/PageLoading/index',
    },
    targets: {
        ie: 11,
    },
    // umi routes: https://umijs.org/docs/routing
    routes: [
        {
            path: '/xadmin/login',
            component: '../layouts/UserLayout',
            routes: [
                {
                    name: 'login',
                    path: '/xadmin/login',
                    component: './UserLogin',
                },
            ],
        },
        {
            path: '/xadmin/',
            component: '../layouts/SecurityLayout',
            routes: [
                {
                    path: '/xadmin/',
                    component: '../layouts/BasicLayout',
                    authority: ['admin', 'user'],
                    routes: [
                        {
                            path: '/xadmin/',
                            redirect: '/xadmin/index',
                        },
                        {
                            name: '首页',
                            path: '/xadmin/index',
                            icon: 'dashboard',
                            component: './DashBoard',
                        },
                        {
                            name: '所在城市',
                            icon: 'smile',
                            path: '/xadmin/city_dict',
                            component: './CityDictList',
                        },
                        {
                            name: '课程机构',
                            icon: 'smile',
                            path: '/xadmin/course_org',
                            component: './CourseOrgList',
                            authority: ['admin', 'user'],
                        },
                        {
                            name: '机构讲师',
                            icon: 'smile',
                            path: '/xadmin/teacher',
                            component: './TeacherList',
                        },
                        {
                            name: '课程信息',
                            icon: 'smile',
                            path: '/xadmin/course',
                            component: './CourseList',
                        },
                        {
                            name: '章节信息',
                            icon: 'smile',
                            path: '/xadmin/lesson',
                            component: './LessonList',
                        },
                        {
                            name: '视频信息',
                            icon: 'smile',
                            path: '/xadmin/video',
                            component: './VideoList',
                        },
                        {
                            name: '课程资源',
                            icon: 'smile',
                            path: '/xadmin/course_resource',
                            component: './CourseResourceList',
                        },
                        {
                            name: '课程评论',
                            icon: 'smile',
                            path: '/xadmin/course_comments',
                            component: './CourseCommentsList',
                        },
                        {
                            name: '用户信息',
                            icon: 'smile',
                            path: '/xadmin/user_profile',
                            component: './UserProfileList',
                        },{
                            name: '邮箱验证',
                            icon: 'smile',
                            path: '/xadmin/email_verify_record',
                            component: './EmailVerifyRecordList',
                        },{
                            name: '首页轮播',
                            icon: 'smile',
                            path: '/xadmin/banner',
                            component: './BannerList',
                        },{
                            name: '用户咨询',
                            icon: 'smile',
                            path: '/xadmin/user_ask',
                            component: './UserAskList',
                        },{
                            name: '用户收藏',
                            icon: 'smile',
                            path: '/xadmin/user_favorite',
                            component: './UserFavoriteList',
                        },{
                            name: '用户消息',
                            icon: 'smile',
                            path: '/xadmin/user_message',
                            component: './UserMessageList',
                        },{
                            name: '用户课程',
                            icon: 'smile',
                            path: '/xadmin/user_course',
                            component: './UserCourseList',
                        },{
                            name: 'TyAdmin日志',
                            icon: 'smile',
                            path: '/xadmin/ty_admin_sys_log',
                            component: './TyAdminSysLogList',
                        },{
                            name: 'TyAdmin验证',
                            icon: 'smile',
                            path: '/xadmin/ty_admin_email_verify_record',
                            component: './TyAdminEmailVerifyRecordList',
                        },
                        {
                            component: './404',
                        },
                    ],
                },
                {
                    component: './404',
                },
            ],
        },
        {
            component: './404',
        },
    ],
    // Theme for antd: https://ant.design/docs/react/customize-theme-cn
    theme: {
        // ...darkTheme,
        'primary-color': defaultSettings.primaryColor,
    },
    // @ts-ignore
    title: false,
    ignoreMomentLocale: true,
    proxy: proxy[REACT_APP_ENV || 'dev'],
    manifest: {
        basePath: '/',
    },
});
