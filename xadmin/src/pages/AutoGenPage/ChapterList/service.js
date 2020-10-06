import request from 'umi-request';

export async function queryChapter(params) {
  return request('/api/xadmin/v1/chapter', {
    params,
  });
}
export async function removeChapter(params) {
  return request(`/api/xadmin/v1/chapter/${params}`, {
    method: 'DELETE',
  });
}
export async function addChapter(params) {
  return request('/api/xadmin/v1/chapter', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateChapter(params, id) {
  return request(`/api/xadmin/v1/chapter/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
