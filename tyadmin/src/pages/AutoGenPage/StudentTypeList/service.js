import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryStudentType(params) {
  return request('/api/xadmin/v1/student_type', {
    params,
  });
}
export async function removeStudentType(params) {
  return request(`/api/xadmin/v1/student_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addStudentType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/student_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateStudentType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/student_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryStudentTypeVerboseName(params) {
  return request('/api/xadmin/v1/student_type/verbose_name', {
    params,
  });
}
export async function queryStudentTypeListDisplay(params) {
  return request('/api/xadmin/v1/student_type/list_display', {
    params,
  });
}
export async function queryStudentTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/student_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

