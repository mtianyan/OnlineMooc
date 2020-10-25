import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryHot(params) {
  return request('/api/xadmin/v1/hot', {
    params,
  });
}
export async function removeHot(params) {
  return request(`/api/xadmin/v1/hot/${params}`, {
    method: 'DELETE',
  });
}
export async function addHot(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/hot', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateHot(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/hot/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryHotVerboseName(params) {
  return request('/api/xadmin/v1/hot/verbose_name', {
    params,
  });
}
export async function queryHotListDisplay(params) {
  return request('/api/xadmin/v1/hot/list_display', {
    params,
  });
}
export async function queryHotDisplayOrder(params) {
  return request('/api/xadmin/v1/hot/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

