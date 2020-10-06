import request from 'umi-request';

export async function querySysLog(params) {
  return request('/api/xadmin/v1/sys_log', {
    params,
  });
}
export async function removeSysLog(params) {
  return request(`/api/xadmin/v1/sys_log/${params}`, {
    method: 'DELETE',
  });
}
export async function addSysLog(params) {
  return request('/api/xadmin/v1/sys_log', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateSysLog(params, id) {
  return request(`/api/xadmin/v1/sys_log/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
