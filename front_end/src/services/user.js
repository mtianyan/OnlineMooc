import request from '@/utils/request';

export async function query() {
  return request('/api/users');
}
export async function queryCurrent() {
  return request('/api/v1/user/currentUser');
}
export async function queryNotices() {
  return request('/api/notices');
}
