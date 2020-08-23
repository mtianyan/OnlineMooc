import request from 'umi-request';

export async function queryUserFavorite(params) {
  return request('/api/xadmin/v1/user_favorite', {
    params,
  });
}
export async function removeUserFavorite(params) {
  return request(`/api/xadmin/v1/user_favorite/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserFavorite(params) {
  return request('/api/xadmin/v1/user_favorite', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateUserFavorite(params, id) {
  return request(`/api/xadmin/v1/user_favorite/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
