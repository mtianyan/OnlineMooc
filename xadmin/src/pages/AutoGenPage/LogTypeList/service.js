import request from 'umi-request';

export async function queryLogType(params) {
  return request('/api/xadmin/v1/log_type', {
    params,
  });
}
export async function removeLogType(params) {
  return request(`/api/xadmin/v1/log_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLogType(params) {
  return request('/api/xadmin/v1/log_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLogType(params, id) {
  return request(`/api/xadmin/v1/log_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
