import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryHistory(params) {
  return request('/api/xadmin/v1/history', {
    params,
  });
}
export async function removeHistory(params) {
  return request(`/api/xadmin/v1/history/${params}`, {
    method: 'DELETE',
  });
}
export async function addHistory(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/history', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateHistory(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/history/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryHistoryVerboseName(params) {
  return request('/api/xadmin/v1/history/verbose_name', {
    params,
  });
}
export async function queryHistoryListDisplay(params) {
  return request('/api/xadmin/v1/history/list_display', {
    params,
  });
}
export async function queryHistoryDisplayOrder(params) {
  return request('/api/xadmin/v1/history/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

