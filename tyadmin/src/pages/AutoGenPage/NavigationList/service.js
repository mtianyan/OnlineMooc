import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryNavigation(params) {
  return request('/api/xadmin/v1/navigation', {
    params,
  });
}
export async function removeNavigation(params) {
  return request(`/api/xadmin/v1/navigation/${params}`, {
    method: 'DELETE',
  });
}
export async function addNavigation(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/navigation', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateNavigation(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/navigation/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryNavigationVerboseName(params) {
  return request('/api/xadmin/v1/navigation/verbose_name', {
    params,
  });
}
export async function queryNavigationListDisplay(params) {
  return request('/api/xadmin/v1/navigation/list_display', {
    params,
  });
}
export async function queryNavigationDisplayOrder(params) {
  return request('/api/xadmin/v1/navigation/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

