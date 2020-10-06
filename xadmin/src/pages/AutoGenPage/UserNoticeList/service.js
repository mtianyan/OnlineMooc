import request from 'umi-request';

export async function queryUserNotice(params) {
  return request('/api/xadmin/v1/user_notice', {
    params,
  });
}
export async function removeUserNotice(params) {
  return request(`/api/xadmin/v1/user_notice/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserNotice(params) {
  return request('/api/xadmin/v1/user_notice', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateUserNotice(params, id) {
  return request(`/api/xadmin/v1/user_notice/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
