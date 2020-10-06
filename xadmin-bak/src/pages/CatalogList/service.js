import request from 'umi-request';

export async function queryCatalog(params) {
  return request('/api/xadmin/v1/catalog', {
    params,
  });
}
export async function removeCatalog(params) {
  return request(`/api/xadmin/v1/catalog/${params}`, {
    method: 'DELETE',
  });
}
export async function addCatalog(params) {
  return request('/api/xadmin/v1/catalog', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCatalog(params, id) {
  return request(`/api/xadmin/v1/catalog/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
