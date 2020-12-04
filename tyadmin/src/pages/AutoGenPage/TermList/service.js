import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryTerm(params) {
  return request('/api/xadmin/v1/term', {
    params,
  });
}
export async function removeTerm(params) {
  return request(`/api/xadmin/v1/term/${params}`, {
    method: 'DELETE',
  });
}
export async function addTerm(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/term', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateTerm(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/term/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryTermVerboseName(params) {
  return request('/api/xadmin/v1/term/verbose_name', {
    params,
  });
}
export async function queryTermListDisplay(params) {
  return request('/api/xadmin/v1/term/list_display', {
    params,
  });
}
export async function queryTermDisplayOrder(params) {
  return request('/api/xadmin/v1/term/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

