import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryReadChapter(params) {
  return request('/api/xadmin/v1/read_chapter', {
    params,
  });
}
export async function removeReadChapter(params) {
  return request(`/api/xadmin/v1/read_chapter/${params}`, {
    method: 'DELETE',
  });
}
export async function addReadChapter(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/read_chapter', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateReadChapter(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/read_chapter/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryReadChapterVerboseName(params) {
  return request('/api/xadmin/v1/read_chapter/verbose_name', {
    params,
  });
}
export async function queryReadChapterListDisplay(params) {
  return request('/api/xadmin/v1/read_chapter/list_display', {
    params,
  });
}
export async function queryReadChapterDisplayOrder(params) {
  return request('/api/xadmin/v1/read_chapter/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

