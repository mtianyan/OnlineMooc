import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryAddress(params) {
  return request('/api/xadmin/v1/address', {
    params,
  });
}
export async function removeAddress(params) {
  return request(`/api/xadmin/v1/address/${params}`, {
    method: 'DELETE',
  });
}
export async function addAddress(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/address', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateAddress(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/address/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryAddressVerboseName(params) {
  return request('/api/xadmin/v1/address/verbose_name', {
    params,
  });
}
export async function queryAddressListDisplay(params) {
  return request('/api/xadmin/v1/address/list_display', {
    params,
  });
}
export async function queryAddressDisplayOrder(params) {
  return request('/api/xadmin/v1/address/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

