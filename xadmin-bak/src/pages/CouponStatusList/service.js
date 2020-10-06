import request from 'umi-request';

export async function queryCouponStatus(params) {
  return request('/api/xadmin/v1/coupon_status', {
    params,
  });
}
export async function removeCouponStatus(params) {
  return request(`/api/xadmin/v1/coupon_status/${params}`, {
    method: 'DELETE',
  });
}
export async function addCouponStatus(params) {
  return request('/api/xadmin/v1/coupon_status', {
    method: 'POST',
    data: { ...params, method: 'post' },
  });
}
export async function updateCouponStatus(params, id) {
  return request(`/api/xadmin/v1/coupon_status/${id}`, {
    method: 'PUT',
    data: { ...params, id},
  });
}
