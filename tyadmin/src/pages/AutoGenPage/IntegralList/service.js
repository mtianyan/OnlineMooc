import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryIntegral(params) {
  return request('/api/xadmin/v1/integral', {
    params,
  });
}
export async function removeIntegral(params) {
  return request(`/api/xadmin/v1/integral/${params}`, {
    method: 'DELETE',
  });
}
export async function addIntegral(params) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/integral', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateIntegral(params, id) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/integral/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryIntegralVerboseName(params) {
  return request('/api/xadmin/v1/integral/verbose_name', {
    params,
  });
}
export async function queryIntegralListDisplay(params) {
  return request('/api/xadmin/v1/integral/list_display', {
    params,
  });
}
export async function queryIntegralDisplayOrder(params) {
  return request('/api/xadmin/v1/integral/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

