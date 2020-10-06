import request from 'umi-request';

export async function queryTerm(params) {
  return request('/api/xadmin/v1/term', {
    params,
  });
}
export async function removeTerm(params) {
  return request(`/api/xadmin/v1/term/${params}`, {
    method: 'DELETE',
  });
}
export async function addTerm(params) {
  return request('/api/xadmin/v1/term', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateTerm(params, id) {
  return request(`/api/xadmin/v1/term/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
