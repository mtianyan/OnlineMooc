import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
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
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/coupon', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCoupon(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/coupon/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryCouponVerboseName(params) {
  return request('/api/xadmin/v1/coupon/verbose_name', {
    params,
  });
}
export async function queryCouponListDisplay(params) {
  return request('/api/xadmin/v1/coupon/list_display', {
    params,
  });
}
export async function queryCouponDisplayOrder(params) {
  return request('/api/xadmin/v1/coupon/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

