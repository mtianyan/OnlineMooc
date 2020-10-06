import request from 'umi-request';

export async function queryAddress(params) {
  return request('/api/xadmin/v1/address', {
    params,
  });
}
export async function removeAddress(params) {
  return request(`/api/xadmin/v1/address/${params}`, {
    method: 'DELETE',
  });
}
export async function addAddress(params) {
  return request('/api/xadmin/v1/address', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateAddress(params, id) {
  return request(`/api/xadmin/v1/address/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
