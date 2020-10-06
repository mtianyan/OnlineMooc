import request from 'umi-request';

export async function queryCoupon(params) {
  return request('/api/xadmin/v1/coupon', {
    params,
  });
}
export async function removeCoupon(params) {
  return request(`/api/xadmin/v1/coupon/${params}`, {
    method: 'DELETE',
  });
}
export async function addCoupon(params) {
  return request('/api/xadmin/v1/coupon', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCoupon(params, id) {
  return request(`/api/xadmin/v1/coupon/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
