import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function querySlider(params) {
  return request('/api/xadmin/v1/slider', {
    params,
  });
}
export async function removeSlider(params) {
  return request(`/api/xadmin/v1/slider/${params}`, {
    method: 'DELETE',
  });
}
export async function addSlider(params) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/slider', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateSlider(params, id) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/slider/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function querySliderVerboseName(params) {
  return request('/api/xadmin/v1/slider/verbose_name', {
    params,
  });
}
export async function querySliderListDisplay(params) {
  return request('/api/xadmin/v1/slider/list_display', {
    params,
  });
}
export async function querySliderDisplayOrder(params) {
  return request('/api/xadmin/v1/slider/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

