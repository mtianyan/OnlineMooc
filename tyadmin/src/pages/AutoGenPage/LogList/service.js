import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryLog(params) {
  return request('/api/xadmin/v1/log', {
    params,
  });
}
export async function removeLog(params) {
  return request(`/api/xadmin/v1/log/${params}`, {
    method: 'DELETE',
  });
}
export async function addLog(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/log', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLog(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/log/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLogVerboseName(params) {
  return request('/api/xadmin/v1/log/verbose_name', {
    params,
  });
}
export async function queryLogListDisplay(params) {
  return request('/api/xadmin/v1/log/list_display', {
    params,
  });
}
export async function queryLogDisplayOrder(params) {
  return request('/api/xadmin/v1/log/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

