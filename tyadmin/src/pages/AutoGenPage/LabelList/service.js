import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryLabel(params) {
  return request('/api/xadmin/v1/label', {
    params,
  });
}
export async function removeLabel(params) {
  return request(`/api/xadmin/v1/label/${params}`, {
    method: 'DELETE',
  });
}
export async function addLabel(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/label', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLabel(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/label/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLabelVerboseName(params) {
  return request('/api/xadmin/v1/label/verbose_name', {
    params,
  });
}
export async function queryLabelListDisplay(params) {
  return request('/api/xadmin/v1/label/list_display', {
    params,
  });
}
export async function queryLabelDisplayOrder(params) {
  return request('/api/xadmin/v1/label/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

