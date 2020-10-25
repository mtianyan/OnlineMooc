import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryNotice(params) {
  return request('/api/xadmin/v1/notice', {
    params,
  });
}
export async function removeNotice(params) {
  return request(`/api/xadmin/v1/notice/${params}`, {
    method: 'DELETE',
  });
}
export async function addNotice(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/notice', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateNotice(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/notice/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryNoticeVerboseName(params) {
  return request('/api/xadmin/v1/notice/verbose_name', {
    params,
  });
}
export async function queryNoticeListDisplay(params) {
  return request('/api/xadmin/v1/notice/list_display', {
    params,
  });
}
export async function queryNoticeDisplayOrder(params) {
  return request('/api/xadmin/v1/notice/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

