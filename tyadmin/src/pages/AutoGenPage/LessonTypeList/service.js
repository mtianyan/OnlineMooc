import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryLessonType(params) {
  return request('/api/xadmin/v1/lesson_type', {
    params,
  });
}
export async function removeLessonType(params) {
  return request(`/api/xadmin/v1/lesson_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLessonType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/lesson_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLessonType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/lesson_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLessonTypeVerboseName(params) {
  return request('/api/xadmin/v1/lesson_type/verbose_name', {
    params,
  });
}
export async function queryLessonTypeListDisplay(params) {
  return request('/api/xadmin/v1/lesson_type/list_display', {
    params,
  });
}
export async function queryLessonTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/lesson_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

