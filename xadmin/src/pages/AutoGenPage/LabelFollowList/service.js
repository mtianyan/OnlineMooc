import request from 'umi-request';

export async function queryLabelFollow(params) {
  return request('/api/xadmin/v1/label_follow', {
    params,
  });
}
export async function removeLabelFollow(params) {
  return request(`/api/xadmin/v1/label_follow/${params}`, {
    method: 'DELETE',
  });
}
export async function addLabelFollow(params) {
  return request('/api/xadmin/v1/label_follow', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLabelFollow(params, id) {
  return request(`/api/xadmin/v1/label_follow/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
