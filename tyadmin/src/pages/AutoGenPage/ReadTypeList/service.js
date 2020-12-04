import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryReadType(params) {
  return request('/api/xadmin/v1/read_type', {
    params,
  });
}
export async function removeReadType(params) {
  return request(`/api/xadmin/v1/read_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addReadType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/read_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateReadType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/read_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryReadTypeVerboseName(params) {
  return request('/api/xadmin/v1/read_type/verbose_name', {
    params,
  });
}
export async function queryReadTypeListDisplay(params) {
  return request('/api/xadmin/v1/read_type/list_display', {
    params,
  });
}
export async function queryReadTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/read_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

