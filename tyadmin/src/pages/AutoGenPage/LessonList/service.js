import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryLesson(params) {
  return request('/api/xadmin/v1/lesson', {
    params,
  });
}
export async function removeLesson(params) {
  return request(`/api/xadmin/v1/lesson/${params}`, {
    method: 'DELETE',
  });
}
export async function addLesson(params) {
  let fileFieldList = ["img","banner"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/lesson', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLesson(params, id) {
  let fileFieldList = ["img","banner"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/lesson/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLessonVerboseName(params) {
  return request('/api/xadmin/v1/lesson/verbose_name', {
    params,
  });
}
export async function queryLessonListDisplay(params) {
  return request('/api/xadmin/v1/lesson/list_display', {
    params,
  });
}
export async function queryLessonDisplayOrder(params) {
  return request('/api/xadmin/v1/lesson/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

