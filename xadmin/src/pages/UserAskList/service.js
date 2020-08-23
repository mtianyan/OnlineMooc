import request from 'umi-request';

export async function queryUserAsk(params) {
  return request('/api/xadmin/v1/user_ask', {
    params,
  });
}
export async function removeUserAsk(params) {
  return request(`/api/xadmin/v1/user_ask/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserAsk(params) {
  return request('/api/xadmin/v1/user_ask', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateUserAsk(params, id) {
  return request(`/api/xadmin/v1/user_ask/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
