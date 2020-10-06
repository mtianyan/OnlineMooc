import request from 'umi-request';

export async function queryReadChapterItem(params) {
  return request('/api/xadmin/v1/read_chapter_item', {
    params,
  });
}
export async function removeReadChapterItem(params) {
  return request(`/api/xadmin/v1/read_chapter_item/${params}`, {
    method: 'DELETE',
  });
}
export async function addReadChapterItem(params) {
  return request('/api/xadmin/v1/read_chapter_item', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateReadChapterItem(params, id) {
  return request(`/api/xadmin/v1/read_chapter_item/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
