import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryUserLesson(params) {
  return request('/api/xadmin/v1/user_lesson', {
    params,
  });
}
export async function removeUserLesson(params) {
  return request(`/api/xadmin/v1/user_lesson/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserLesson(params) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/user_lesson', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateUserLesson(params, id) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/user_lesson/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryUserLessonVerboseName(params) {
  return request('/api/xadmin/v1/user_lesson/verbose_name', {
    params,
  });
}
export async function queryUserLessonListDisplay(params) {
  return request('/api/xadmin/v1/user_lesson/list_display', {
    params,
  });
}
export async function queryUserLessonDisplayOrder(params) {
  return request('/api/xadmin/v1/user_lesson/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

