import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryRechargePay(params) {
  return request('/api/xadmin/v1/recharge_pay', {
    params,
  });
}
export async function removeRechargePay(params) {
  return request(`/api/xadmin/v1/recharge_pay/${params}`, {
    method: 'DELETE',
  });
}
export async function addRechargePay(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/recharge_pay', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateRechargePay(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/recharge_pay/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryRechargePayVerboseName(params) {
  return request('/api/xadmin/v1/recharge_pay/verbose_name', {
    params,
  });
}
export async function queryRechargePayListDisplay(params) {
  return request('/api/xadmin/v1/recharge_pay/list_display', {
    params,
  });
}
export async function queryRechargePayDisplayOrder(params) {
  return request('/api/xadmin/v1/recharge_pay/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

