import request from 'umi-request';

export async function queryContentType(params) {
  return request('/api/xadmin/v1/content_type', {
    params,
  });
}
export async function removeContentType(params) {
  return request(`/api/xadmin/v1/content_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addContentType(params) {
  return request('/api/xadmin/v1/content_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateContentType(params, id) {
  return request(`/api/xadmin/v1/content_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
