import request from 'umi-request';

export async function queryCourseComments(params) {
  return request('/api/xadmin/v1/course_comments', {
    params,
  });
}
export async function removeCourseComments(params) {
  return request(`/api/xadmin/v1/course_comments/${params}`, {
    method: 'DELETE',
  });
}
export async function addCourseComments(params) {
  return request('/api/xadmin/v1/course_comments', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCourseComments(params, id) {
  return request(`/api/xadmin/v1/course_comments/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
