import request from 'umi-request';

export async function queryCityDict(params) {
  return request('/api/xadmin/v1/city_dict', {
    params,
  });
}
export async function removeCityDict(params) {
  return request(`/api/xadmin/v1/city_dict/${params}`, {
    method: 'DELETE',
  });
}
export async function addCityDict(params) {
  return request('/api/xadmin/v1/city_dict', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCityDict(params, id) {
  return request(`/api/xadmin/v1/city_dict/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
