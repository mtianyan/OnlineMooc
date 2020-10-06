import request from 'umi-request';

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
  return request('/api/xadmin/v1/recharge_action', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateRechargeAction(params, id) {
  return request(`/api/xadmin/v1/recharge_action/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
