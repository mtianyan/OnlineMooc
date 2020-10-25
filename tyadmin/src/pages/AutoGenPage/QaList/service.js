import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryQa(params) {
  return request('/api/xadmin/v1/qa', {
    params,
  });
}
export async function removeQa(params) {
  return request(`/api/xadmin/v1/qa/${params}`, {
    method: 'DELETE',
  });
}
export async function addQa(params) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/qa', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateQa(params, id) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/qa/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryQaVerboseName(params) {
  return request('/api/xadmin/v1/qa/verbose_name', {
    params,
  });
}
export async function queryQaListDisplay(params) {
  return request('/api/xadmin/v1/qa/list_display', {
    params,
  });
}
export async function queryQaDisplayOrder(params) {
  return request('/api/xadmin/v1/qa/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

