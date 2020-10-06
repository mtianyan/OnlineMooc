import request from 'umi-request';

export async function queryGroup(params) {
  return request('/api/xadmin/v1/group', {
    params,
  });
}
export async function removeGroup(params) {
  return request(`/api/xadmin/v1/group/${params}`, {
    method: 'DELETE',
  });
}
export async function addGroup(params) {
  return request('/api/xadmin/v1/group', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateGroup(params, id) {
  return request(`/api/xadmin/v1/group/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
