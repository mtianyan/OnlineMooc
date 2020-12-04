import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryOrderStatus(params) {
  return request('/api/xadmin/v1/order_status', {
    params,
  });
}
export async function removeOrderStatus(params) {
  return request(`/api/xadmin/v1/order_status/${params}`, {
    method: 'DELETE',
  });
}
export async function addOrderStatus(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/order_status', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateOrderStatus(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/order_status/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryOrderStatusVerboseName(params) {
  return request('/api/xadmin/v1/order_status/verbose_name', {
    params,
  });
}
export async function queryOrderStatusListDisplay(params) {
  return request('/api/xadmin/v1/order_status/list_display', {
    params,
  });
}
export async function queryOrderStatusDisplayOrder(params) {
  return request('/api/xadmin/v1/order_status/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

