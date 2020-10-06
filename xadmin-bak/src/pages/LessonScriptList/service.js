import request from 'umi-request';

export async function queryLessonScript(params) {
  return request('/api/xadmin/v1/lesson_script', {
    params,
  });
}
export async function removeLessonScript(params) {
  return request(`/api/xadmin/v1/lesson_script/${params}`, {
    method: 'DELETE',
  });
}
export async function addLessonScript(params) {
  return request('/api/xadmin/v1/lesson_script', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLessonScript(params, id) {
  return request(`/api/xadmin/v1/lesson_script/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
