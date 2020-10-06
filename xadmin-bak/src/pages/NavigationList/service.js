import request from 'umi-request';

export async function queryNavigation(params) {
  return request('/api/xadmin/v1/navigation', {
    params,
  });
}
export async function removeNavigation(params) {
  return request(`/api/xadmin/v1/navigation/${params}`, {
    method: 'DELETE',
  });
}
export async function addNavigation(params) {
  return request('/api/xadmin/v1/navigation', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateNavigation(params, id) {
  return request(`/api/xadmin/v1/navigation/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
