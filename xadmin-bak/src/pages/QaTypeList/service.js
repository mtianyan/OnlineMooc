import request from 'umi-request';

export async function queryQaType(params) {
  return request('/api/xadmin/v1/qa_type', {
    params,
  });
}
export async function removeQaType(params) {
  return request(`/api/xadmin/v1/qa_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addQaType(params) {
  return request('/api/xadmin/v1/qa_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateQaType(params, id) {
  return request(`/api/xadmin/v1/qa_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
