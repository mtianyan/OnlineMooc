import request from 'umi-request';

export async function queryLabelType(params) {
  return request('/api/xadmin/v1/label_type', {
    params,
  });
}
export async function removeLabelType(params) {
  return request(`/api/xadmin/v1/label_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLabelType(params) {
  return request('/api/xadmin/v1/label_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateLabelType(params, id) {
  return request(`/api/xadmin/v1/label_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
