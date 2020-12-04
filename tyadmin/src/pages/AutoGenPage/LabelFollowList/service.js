import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryLabelFollow(params) {
  return request('/api/xadmin/v1/label_follow', {
    params,
  });
}
export async function removeLabelFollow(params) {
  return request(`/api/xadmin/v1/label_follow/${params}`, {
    method: 'DELETE',
  });
}
export async function addLabelFollow(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/label_follow', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLabelFollow(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/label_follow/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryLabelFollowVerboseName(params) {
  return request('/api/xadmin/v1/label_follow/verbose_name', {
    params,
  });
}
export async function queryLabelFollowListDisplay(params) {
  return request('/api/xadmin/v1/label_follow/list_display', {
    params,
  });
}
export async function queryLabelFollowDisplayOrder(params) {
  return request('/api/xadmin/v1/label_follow/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

