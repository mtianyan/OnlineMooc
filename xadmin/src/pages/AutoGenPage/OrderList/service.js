import request from 'umi-request';

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
  return request('/api/xadmin/v1/order', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateOrder(params, id) {
  return request(`/api/xadmin/v1/order/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
