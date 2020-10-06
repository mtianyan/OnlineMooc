import request from 'umi-request';

export async function queryLessonHardType(params) {
  return request('/api/xadmin/v1/lesson_hard_type', {
    params,
  });
}
export async function removeLessonHardType(params) {
  return request(`/api/xadmin/v1/lesson_hard_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLessonHardType(params) {
  return request('/api/xadmin/v1/lesson_hard_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLessonHardType(params, id) {
  return request(`/api/xadmin/v1/lesson_hard_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
