import request from 'umi-request';

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
  return request('/api/xadmin/v1/order_status', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateOrderStatus(params, id) {
  return request(`/api/xadmin/v1/order_status/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
