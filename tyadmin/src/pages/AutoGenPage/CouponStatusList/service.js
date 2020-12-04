import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
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
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/coupon_status', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCouponStatus(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/coupon_status/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryCouponStatusVerboseName(params) {
  return request('/api/xadmin/v1/coupon_status/verbose_name', {
    params,
  });
}
export async function queryCouponStatusListDisplay(params) {
  return request('/api/xadmin/v1/coupon_status/list_display', {
    params,
  });
}
export async function queryCouponStatusDisplayOrder(params) {
  return request('/api/xadmin/v1/coupon_status/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

