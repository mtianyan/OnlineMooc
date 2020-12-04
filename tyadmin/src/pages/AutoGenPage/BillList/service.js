import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryBill(params) {
  return request('/api/xadmin/v1/bill', {
    params,
  });
}
export async function removeBill(params) {
  return request(`/api/xadmin/v1/bill/${params}`, {
    method: 'DELETE',
  });
}
export async function addBill(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/bill', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateBill(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/bill/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryBillVerboseName(params) {
  return request('/api/xadmin/v1/bill/verbose_name', {
    params,
  });
}
export async function queryBillListDisplay(params) {
  return request('/api/xadmin/v1/bill/list_display', {
    params,
  });
}
export async function queryBillDisplayOrder(params) {
  return request('/api/xadmin/v1/bill/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

