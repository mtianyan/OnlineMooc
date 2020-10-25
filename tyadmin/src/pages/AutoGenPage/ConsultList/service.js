import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryConsult(params) {
  return request('/api/xadmin/v1/consult', {
    params,
  });
}
export async function removeConsult(params) {
  return request(`/api/xadmin/v1/consult/${params}`, {
    method: 'DELETE',
  });
}
export async function addConsult(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/consult', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateConsult(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/consult/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryConsultVerboseName(params) {
  return request('/api/xadmin/v1/consult/verbose_name', {
    params,
  });
}
export async function queryConsultListDisplay(params) {
  return request('/api/xadmin/v1/consult/list_display', {
    params,
  });
}
export async function queryConsultDisplayOrder(params) {
  return request('/api/xadmin/v1/consult/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

