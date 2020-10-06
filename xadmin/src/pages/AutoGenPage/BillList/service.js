import request from 'umi-request';

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
  return request('/api/xadmin/v1/bill', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateBill(params, id) {
  return request(`/api/xadmin/v1/bill/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
