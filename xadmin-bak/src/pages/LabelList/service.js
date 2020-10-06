import request from 'umi-request';

export async function queryLabel(params) {
  return request('/api/xadmin/v1/label', {
    params,
  });
}
export async function removeLabel(params) {
  return request(`/api/xadmin/v1/label/${params}`, {
    method: 'DELETE',
  });
}
export async function addLabel(params) {
  return request('/api/xadmin/v1/label', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLabel(params, id) {
  return request(`/api/xadmin/v1/label/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
