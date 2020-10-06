import request from 'umi-request';

export async function queryLessonType(params) {
  return request('/api/xadmin/v1/lesson_type', {
    params,
  });
}
export async function removeLessonType(params) {
  return request(`/api/xadmin/v1/lesson_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLessonType(params) {
  return request('/api/xadmin/v1/lesson_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLessonType(params, id) {
  return request(`/api/xadmin/v1/lesson_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
