import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function querySysLog(params) {
  return request('/api/xadmin/v1/sys_log', {
    params,
  });
}
export async function removeSysLog(params) {
  return request(`/api/xadmin/v1/sys_log/${params}`, {
    method: 'DELETE',
  });
}
export async function addSysLog(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/sys_log', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateSysLog(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/sys_log/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function querySysLogVerboseName(params) {
  return request('/api/xadmin/v1/sys_log/verbose_name', {
    params,
  });
}
export async function querySysLogListDisplay(params) {
  return request('/api/xadmin/v1/sys_log/list_display', {
    params,
  });
}
export async function querySysLogDisplayOrder(params) {
  return request('/api/xadmin/v1/sys_log/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

