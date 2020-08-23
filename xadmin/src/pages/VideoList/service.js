import request from 'umi-request';

export async function queryVideo(params) {
  return request('/api/xadmin/v1/video', {
    params,
  });
}
export async function removeVideo(params) {
  return request(`/api/xadmin/v1/video/${params}`, {
    method: 'DELETE',
  });
}
export async function addVideo(params) {
  return request('/api/xadmin/v1/video', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateVideo(params, id) {
  return request(`/api/xadmin/v1/video/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
