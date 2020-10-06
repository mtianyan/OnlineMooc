import request from 'umi-request';

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
  return request('/api/xadmin/v1/recharge', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateRecharge(params, id) {
  return request(`/api/xadmin/v1/recharge/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
