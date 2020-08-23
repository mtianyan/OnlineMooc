import request from 'umi-request';

export async function queryLesson(params) {
  return request('/api/xadmin/v1/lesson', {
    params,
  });
}
export async function removeLesson(params) {
  return request(`/api/xadmin/v1/lesson/${params}`, {
    method: 'DELETE',
  });
}
export async function addLesson(params) {
  return request('/api/xadmin/v1/lesson', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLesson(params, id) {
  return request(`/api/xadmin/v1/lesson/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
