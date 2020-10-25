import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryTeacher(params) {
  return request('/api/xadmin/v1/teacher', {
    params,
  });
}
export async function removeTeacher(params) {
  return request(`/api/xadmin/v1/teacher/${params}`, {
    method: 'DELETE',
  });
}
export async function addTeacher(params) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/teacher', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateTeacher(params, id) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/teacher/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryTeacherVerboseName(params) {
  return request('/api/xadmin/v1/teacher/verbose_name', {
    params,
  });
}
export async function queryTeacherListDisplay(params) {
  return request('/api/xadmin/v1/teacher/list_display', {
    params,
  });
}
export async function queryTeacherDisplayOrder(params) {
  return request('/api/xadmin/v1/teacher/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

