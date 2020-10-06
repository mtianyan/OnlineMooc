import request from 'umi-request';

export async function queryCouponRange(params) {
  return request('/api/xadmin/v1/coupon_range', {
    params,
  });
}
export async function removeCouponRange(params) {
  return request(`/api/xadmin/v1/coupon_range/${params}`, {
    method: 'DELETE',
  });
}
export async function addCouponRange(params) {
  return request('/api/xadmin/v1/coupon_range', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCouponRange(params, id) {
  return request(`/api/xadmin/v1/coupon_range/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
