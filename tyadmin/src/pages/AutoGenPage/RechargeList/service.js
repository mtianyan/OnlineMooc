import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryRecharge(params) {
  return request('/api/xadmin/v1/recharge', {
    params,
  });
}
export async function removeRecharge(params) {
  return request(`/api/xadmin/v1/recharge/${params}`, {
    method: 'DELETE',
  });
}
export async function addRecharge(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/recharge', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateRecharge(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/recharge/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryRechargeVerboseName(params) {
  return request('/api/xadmin/v1/recharge/verbose_name', {
    params,
  });
}
export async function queryRechargeListDisplay(params) {
  return request('/api/xadmin/v1/recharge/list_display', {
    params,
  });
}
export async function queryRechargeDisplayOrder(params) {
  return request('/api/xadmin/v1/recharge/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

