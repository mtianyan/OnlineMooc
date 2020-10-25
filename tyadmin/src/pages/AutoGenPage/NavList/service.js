import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryNav(params) {
  return request('/api/xadmin/v1/nav', {
    params,
  });
}
export async function removeNav(params) {
  return request(`/api/xadmin/v1/nav/${params}`, {
    method: 'DELETE',
  });
}
export async function addNav(params) {
  let fileFieldList = ["icon"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/nav', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateNav(params, id) {
  let fileFieldList = ["icon"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/nav/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryNavVerboseName(params) {
  return request('/api/xadmin/v1/nav/verbose_name', {
    params,
  });
}
export async function queryNavListDisplay(params) {
  return request('/api/xadmin/v1/nav/list_display', {
    params,
  });
}
export async function queryNavDisplayOrder(params) {
  return request('/api/xadmin/v1/nav/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

