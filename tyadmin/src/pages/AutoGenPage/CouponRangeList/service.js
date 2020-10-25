import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
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
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/coupon_range', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCouponRange(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/coupon_range/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryCouponRangeVerboseName(params) {
  return request('/api/xadmin/v1/coupon_range/verbose_name', {
    params,
  });
}
export async function queryCouponRangeListDisplay(params) {
  return request('/api/xadmin/v1/coupon_range/list_display', {
    params,
  });
}
export async function queryCouponRangeDisplayOrder(params) {
  return request('/api/xadmin/v1/coupon_range/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

