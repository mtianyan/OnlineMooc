import request from 'umi-request';

export async function queryUserMessage(params) {
  return request('/api/xadmin/v1/user_message', {
    params,
  });
}
export async function removeUserMessage(params) {
  return request(`/api/xadmin/v1/user_message/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserMessage(params) {
  return request('/api/xadmin/v1/user_message', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateUserMessage(params, id) {
  return request(`/api/xadmin/v1/user_message/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
