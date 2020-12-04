import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryFooter(params) {
  return request('/api/xadmin/v1/footer', {
    params,
  });
}
export async function removeFooter(params) {
  return request(`/api/xadmin/v1/footer/${params}`, {
    method: 'DELETE',
  });
}
export async function addFooter(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/footer', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateFooter(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/footer/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryFooterVerboseName(params) {
  return request('/api/xadmin/v1/footer/verbose_name', {
    params,
  });
}
export async function queryFooterListDisplay(params) {
  return request('/api/xadmin/v1/footer/list_display', {
    params,
  });
}
export async function queryFooterDisplayOrder(params) {
  return request('/api/xadmin/v1/footer/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

