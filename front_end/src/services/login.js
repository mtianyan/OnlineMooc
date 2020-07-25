import request from '@/utils/request';

export async function AccountLogin(params) {
  if(params.type === "email") {
    delete params.key;
  }
  return request('/api/v1/user/login', {
    method: 'POST',
    data: params,
  });
}
export async function getEmailCaptcha(email) {
  return request(`/api/v1/user/sendEmailCaptcha?email=${email}`);
}
export async function getCode() {
  return request(
    '/api/v1/captcha-generate/', {
      method: 'GET'
    }
  );
}
