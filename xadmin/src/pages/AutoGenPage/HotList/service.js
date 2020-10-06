import request from 'umi-request';

export async function queryHot(params) {
  return request('/api/xadmin/v1/hot', {
    params,
  });
}
export async function removeHot(params) {
  return request(`/api/xadmin/v1/hot/${params}`, {
    method: 'DELETE',
  });
}
export async function addHot(params) {
  return request('/api/xadmin/v1/hot', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateHot(params, id) {
  return request(`/api/xadmin/v1/hot/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
