import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryIntegralType(params) {
  return request('/api/xadmin/v1/integral_type', {
    params,
  });
}
export async function removeIntegralType(params) {
  return request(`/api/xadmin/v1/integral_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addIntegralType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/integral_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateIntegralType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/integral_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryIntegralTypeVerboseName(params) {
  return request('/api/xadmin/v1/integral_type/verbose_name', {
    params,
  });
}
export async function queryIntegralTypeListDisplay(params) {
  return request('/api/xadmin/v1/integral_type/list_display', {
    params,
  });
}
export async function queryIntegralTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/integral_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

