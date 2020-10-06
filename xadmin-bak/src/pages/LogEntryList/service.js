import request from 'umi-request';

export async function queryLogEntry(params) {
  return request('/api/xadmin/v1/log_entry', {
    params,
  });
}
export async function removeLogEntry(params) {
  return request(`/api/xadmin/v1/log_entry/${params}`, {
    method: 'DELETE',
  });
}
export async function addLogEntry(params) {
  return request('/api/xadmin/v1/log_entry', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLogEntry(params, id) {
  return request(`/api/xadmin/v1/log_entry/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
