import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryUserNotice(params) {
  return request('/api/xadmin/v1/user_notice', {
    params,
  });
}
export async function removeUserNotice(params) {
  return request(`/api/xadmin/v1/user_notice/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserNotice(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/user_notice', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateUserNotice(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/user_notice/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryUserNoticeVerboseName(params) {
  return request('/api/xadmin/v1/user_notice/verbose_name', {
    params,
  });
}
export async function queryUserNoticeListDisplay(params) {
  return request('/api/xadmin/v1/user_notice/list_display', {
    params,
  });
}
export async function queryUserNoticeDisplayOrder(params) {
  return request('/api/xadmin/v1/user_notice/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

