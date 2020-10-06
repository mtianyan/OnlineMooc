import request from 'umi-request';

export async function queryStudentType(params) {
  return request('/api/xadmin/v1/student_type', {
    params,
  });
}
export async function removeStudentType(params) {
  return request(`/api/xadmin/v1/student_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addStudentType(params) {
  return request('/api/xadmin/v1/student_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateStudentType(params, id) {
  return request(`/api/xadmin/v1/student_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
