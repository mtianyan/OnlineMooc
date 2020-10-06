import request from 'umi-request';

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
  return request('/api/xadmin/v1/recharge_pay', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateRechargePay(params, id) {
  return request(`/api/xadmin/v1/recharge_pay/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
