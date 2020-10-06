import request from 'umi-request';

export async function querySession(params) {
  return request('/api/xadmin/v1/session', {
    params,
  });
}
export async function removeSession(params) {
  return request(`/api/xadmin/v1/session/${params}`, {
    method: 'DELETE',
  });
}
export async function addSession(params) {
  return request('/api/xadmin/v1/session', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateSession(params, id) {
  return request(`/api/xadmin/v1/session/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
