import request from 'umi-request';

export async function queryUserCourse(params) {
  return request('/api/xadmin/v1/user_course', {
    params,
  });
}
export async function removeUserCourse(params) {
  return request(`/api/xadmin/v1/user_course/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserCourse(params) {
  return request('/api/xadmin/v1/user_course', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateUserCourse(params, id) {
  return request(`/api/xadmin/v1/user_course/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
