import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryLogType(params) {
  return request('/api/xadmin/v1/log_type', {
    params,
  });
}
export async function removeLogType(params) {
  return request(`/api/xadmin/v1/log_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addLogType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/log_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLogType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/log_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLogTypeVerboseName(params) {
  return request('/api/xadmin/v1/log_type/verbose_name', {
    params,
  });
}
export async function queryLogTypeListDisplay(params) {
  return request('/api/xadmin/v1/log_type/list_display', {
    params,
  });
}
export async function queryLogTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/log_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

