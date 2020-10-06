import request from 'umi-request';

export async function queryLog(params) {
  return request('/api/xadmin/v1/log', {
    params,
  });
}
export async function removeLog(params) {
  return request(`/api/xadmin/v1/log/${params}`, {
    method: 'DELETE',
  });
}
export async function addLog(params) {
  return request('/api/xadmin/v1/log', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLog(params, id) {
  return request(`/api/xadmin/v1/log/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
