import request from 'umi-request';

export async function queryFooter(params) {
  return request('/api/xadmin/v1/footer', {
    params,
  });
}
export async function removeFooter(params) {
  return request(`/api/xadmin/v1/footer/${params}`, {
    method: 'DELETE',
  });
}
export async function addFooter(params) {
  return request('/api/xadmin/v1/footer', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateFooter(params, id) {
  return request(`/api/xadmin/v1/footer/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
