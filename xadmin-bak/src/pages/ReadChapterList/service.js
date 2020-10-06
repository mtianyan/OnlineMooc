import request from 'umi-request';

export async function queryReadChapter(params) {
  return request('/api/xadmin/v1/read_chapter', {
    params,
  });
}
export async function removeReadChapter(params) {
  return request(`/api/xadmin/v1/read_chapter/${params}`, {
    method: 'DELETE',
  });
}
export async function addReadChapter(params) {
  return request('/api/xadmin/v1/read_chapter', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateReadChapter(params, id) {
  return request(`/api/xadmin/v1/read_chapter/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
