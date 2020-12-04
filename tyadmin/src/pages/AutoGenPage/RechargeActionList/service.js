import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryRechargeAction(params) {
  return request('/api/xadmin/v1/recharge_action', {
    params,
  });
}
export async function removeRechargeAction(params) {
  return request(`/api/xadmin/v1/recharge_action/${params}`, {
    method: 'DELETE',
  });
}
export async function addRechargeAction(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/recharge_action', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateRechargeAction(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/recharge_action/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryRechargeActionVerboseName(params) {
  return request('/api/xadmin/v1/recharge_action/verbose_name', {
    params,
  });
}
export async function queryRechargeActionListDisplay(params) {
  return request('/api/xadmin/v1/recharge_action/list_display', {
    params,
  });
}
export async function queryRechargeActionDisplayOrder(params) {
  return request('/api/xadmin/v1/recharge_action/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

