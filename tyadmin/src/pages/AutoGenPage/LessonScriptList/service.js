import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryLessonScript(params) {
  return request('/api/xadmin/v1/lesson_script', {
    params,
  });
}
export async function removeLessonScript(params) {
  return request(`/api/xadmin/v1/lesson_script/${params}`, {
    method: 'DELETE',
  });
}
export async function addLessonScript(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/lesson_script', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLessonScript(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/lesson_script/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLessonScriptVerboseName(params) {
  return request('/api/xadmin/v1/lesson_script/verbose_name', {
    params,
  });
}
export async function queryLessonScriptListDisplay(params) {
  return request('/api/xadmin/v1/lesson_script/list_display', {
    params,
  });
}
export async function queryLessonScriptDisplayOrder(params) {
  return request('/api/xadmin/v1/lesson_script/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

