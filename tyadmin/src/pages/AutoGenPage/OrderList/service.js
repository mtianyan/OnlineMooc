import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryOrder(params) {
  return request('/api/xadmin/v1/order', {
    params,
  });
}
export async function removeOrder(params) {
  return request(`/api/xadmin/v1/order/${params}`, {
    method: 'DELETE',
  });
}
export async function addOrder(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/order', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateOrder(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/order/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryOrderVerboseName(params) {
  return request('/api/xadmin/v1/order/verbose_name', {
    params,
  });
}
export async function queryOrderListDisplay(params) {
  return request('/api/xadmin/v1/order/list_display', {
    params,
  });
}
export async function queryOrderDisplayOrder(params) {
  return request('/api/xadmin/v1/order/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

