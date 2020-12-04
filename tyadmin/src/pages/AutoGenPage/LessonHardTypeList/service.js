import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryLessonHardType(params) {
  return request('/api/xadmin/v1/lesson_hard_type', {
    params,
  });
}
export async function removeLessonHardType(params) {
  return request(`/api/xadmin/v1/lesson_hard_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLessonHardType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/lesson_hard_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLessonHardType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/lesson_hard_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLessonHardTypeVerboseName(params) {
  return request('/api/xadmin/v1/lesson_hard_type/verbose_name', {
    params,
  });
}
export async function queryLessonHardTypeListDisplay(params) {
  return request('/api/xadmin/v1/lesson_hard_type/list_display', {
    params,
  });
}
export async function queryLessonHardTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/lesson_hard_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

