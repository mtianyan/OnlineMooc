import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryChapter(params) {
  return request('/api/xadmin/v1/chapter', {
    params,
  });
}
export async function removeChapter(params) {
  return request(`/api/xadmin/v1/chapter/${params}`, {
    method: 'DELETE',
  });
}
export async function addChapter(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/chapter', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateChapter(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/chapter/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryChapterVerboseName(params) {
  return request('/api/xadmin/v1/chapter/verbose_name', {
    params,
  });
}
export async function queryChapterListDisplay(params) {
  return request('/api/xadmin/v1/chapter/list_display', {
    params,
  });
}
export async function queryChapterDisplayOrder(params) {
  return request('/api/xadmin/v1/chapter/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

