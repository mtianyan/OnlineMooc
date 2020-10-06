import request from 'umi-request';

export async function queryCaptchaStore(params) {
  return request('/api/xadmin/v1/captcha_store', {
    params,
  });
}
export async function removeCaptchaStore(params) {
  return request(`/api/xadmin/v1/captcha_store/${params}`, {
    method: 'DELETE',
  });
}
export async function addCaptchaStore(params) {
  return request('/api/xadmin/v1/captcha_store', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCaptchaStore(params, id) {
  return request(`/api/xadmin/v1/captcha_store/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
