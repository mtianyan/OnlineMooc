import request from 'umi-request';

export async function queryArticleType(params) {
  return request('/api/xadmin/v1/article_type', {
    params,
  });
}
export async function removeArticleType(params) {
  return request(`/api/xadmin/v1/article_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addArticleType(params) {
  return request('/api/xadmin/v1/article_type', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateArticleType(params, id) {
  return request(`/api/xadmin/v1/article_type/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
