import request from 'umi-request';

export async function queryCommonPathConfig(params) {
  return request('/api/xadmin/v1/common_path_config', {
    params,
  });
}
export async function removeCommonPathConfig(params) {
  return request(`/api/xadmin/v1/common_path_config/${params}`, {
    method: 'DELETE',
  });
}
export async function addCommonPathConfig(params) {
  return request('/api/xadmin/v1/common_path_config', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCommonPathConfig(params, id) {
  return request(`/api/xadmin/v1/common_path_config/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
