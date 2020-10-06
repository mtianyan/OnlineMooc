import request from 'umi-request';

export async function queryPermission(params) {
  return request('/api/xadmin/v1/permission', {
    params,
  });
}
export async function removePermission(params) {
  return request(`/api/xadmin/v1/permission/${params}`, {
    method: 'DELETE',
  });
}
export async function addPermission(params) {
  return request('/api/xadmin/v1/permission', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updatePermission(params, id) {
  return request(`/api/xadmin/v1/permission/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
