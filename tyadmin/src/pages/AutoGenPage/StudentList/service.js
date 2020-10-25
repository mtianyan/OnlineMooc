import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryStudent(params) {
  return request('/api/xadmin/v1/student', {
    params,
  });
}
export async function removeStudent(params) {
  return request(`/api/xadmin/v1/student/${params}`, {
    method: 'DELETE',
  });
}
export async function addStudent(params) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/student', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateStudent(params, id) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/student/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryStudentVerboseName(params) {
  return request('/api/xadmin/v1/student/verbose_name', {
    params,
  });
}
export async function queryStudentListDisplay(params) {
  return request('/api/xadmin/v1/student/list_display', {
    params,
  });
}
export async function queryStudentDisplayOrder(params) {
  return request('/api/xadmin/v1/student/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

