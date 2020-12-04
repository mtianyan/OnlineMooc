import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryQaType(params) {
  return request('/api/xadmin/v1/qa_type', {
    params,
  });
}
export async function removeQaType(params) {
  return request(`/api/xadmin/v1/qa_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addQaType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/qa_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateQaType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/qa_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryQaTypeVerboseName(params) {
  return request('/api/xadmin/v1/qa_type/verbose_name', {
    params,
  });
}
export async function queryQaTypeListDisplay(params) {
  return request('/api/xadmin/v1/qa_type/list_display', {
    params,
  });
}
export async function queryQaTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/qa_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

