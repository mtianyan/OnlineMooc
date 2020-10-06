import request from 'umi-request';

export async function queryAnswer(params) {
  return request('/api/xadmin/v1/answer', {
    params,
  });
}
export async function removeAnswer(params) {
  return request(`/api/xadmin/v1/answer/${params}`, {
    method: 'DELETE',
  });
}
export async function addAnswer(params) {
  return request('/api/xadmin/v1/answer', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateAnswer(params, id) {
  return request(`/api/xadmin/v1/answer/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
