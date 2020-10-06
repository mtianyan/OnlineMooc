import request from 'umi-request';

export async function queryNotice(params) {
  return request('/api/xadmin/v1/notice', {
    params,
  });
}
export async function removeNotice(params) {
  return request(`/api/xadmin/v1/notice/${params}`, {
    method: 'DELETE',
  });
}
export async function addNotice(params) {
  return request('/api/xadmin/v1/notice', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateNotice(params, id) {
  return request(`/api/xadmin/v1/notice/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
