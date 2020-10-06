import request from 'umi-request';

export async function queryIntegralType(params) {
  return request('/api/xadmin/v1/integral_type', {
    params,
  });
}
export async function removeIntegralType(params) {
  return request(`/api/xadmin/v1/integral_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addIntegralType(params) {
  return request('/api/xadmin/v1/integral_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateIntegralType(params, id) {
  return request(`/api/xadmin/v1/integral_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
