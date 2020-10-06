import request from 'umi-request';

export async function queryHistory(params) {
  return request('/api/xadmin/v1/history', {
    params,
  });
}
export async function removeHistory(params) {
  return request(`/api/xadmin/v1/history/${params}`, {
    method: 'DELETE',
  });
}
export async function addHistory(params) {
  return request('/api/xadmin/v1/history', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateHistory(params, id) {
  return request(`/api/xadmin/v1/history/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
