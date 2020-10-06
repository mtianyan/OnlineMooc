import request from 'umi-request';

export async function queryConsult(params) {
  return request('/api/xadmin/v1/consult', {
    params,
  });
}
export async function removeConsult(params) {
  return request(`/api/xadmin/v1/consult/${params}`, {
    method: 'DELETE',
  });
}
export async function addConsult(params) {
  return request('/api/xadmin/v1/consult', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateConsult(params, id) {
  return request(`/api/xadmin/v1/consult/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
