import request from 'umi-request';

export async function queryReadType(params) {
  return request('/api/xadmin/v1/read_type', {
    params,
  });
}
export async function removeReadType(params) {
  return request(`/api/xadmin/v1/read_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addReadType(params) {
  return request('/api/xadmin/v1/read_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateReadType(params, id) {
  return request(`/api/xadmin/v1/read_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
