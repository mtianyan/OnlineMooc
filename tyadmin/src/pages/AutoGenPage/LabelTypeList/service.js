import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryLabelType(params) {
  return request('/api/xadmin/v1/label_type', {
    params,
  });
}
export async function removeLabelType(params) {
  return request(`/api/xadmin/v1/label_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLabelType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/label_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLabelType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/label_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLabelTypeVerboseName(params) {
  return request('/api/xadmin/v1/label_type/verbose_name', {
    params,
  });
}
export async function queryLabelTypeListDisplay(params) {
  return request('/api/xadmin/v1/label_type/list_display', {
    params,
  });
}
export async function queryLabelTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/label_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

