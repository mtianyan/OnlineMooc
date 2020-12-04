import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryCommonPathConfig(params) {
  return request('/api/xadmin/v1/common_path_config', {
    params,
  });
}
export async function removeCommonPathConfig(params) {
  return request(`/api/xadmin/v1/common_path_config/${params}`, {
    method: 'DELETE',
  });
}
export async function addCommonPathConfig(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/common_path_config', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCommonPathConfig(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/common_path_config/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryCommonPathConfigVerboseName(params) {
  return request('/api/xadmin/v1/common_path_config/verbose_name', {
    params,
  });
}
export async function queryCommonPathConfigListDisplay(params) {
  return request('/api/xadmin/v1/common_path_config/list_display', {
    params,
  });
}
export async function queryCommonPathConfigDisplayOrder(params) {
  return request('/api/xadmin/v1/common_path_config/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

