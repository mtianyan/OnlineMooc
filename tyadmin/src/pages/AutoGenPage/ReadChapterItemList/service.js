import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryReadChapterItem(params) {
  return request('/api/xadmin/v1/read_chapter_item', {
    params,
  });
}
export async function removeReadChapterItem(params) {
  return request(`/api/xadmin/v1/read_chapter_item/${params}`, {
    method: 'DELETE',
  });
}
export async function addReadChapterItem(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/read_chapter_item', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateReadChapterItem(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/read_chapter_item/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryReadChapterItemVerboseName(params) {
  return request('/api/xadmin/v1/read_chapter_item/verbose_name', {
    params,
  });
}
export async function queryReadChapterItemListDisplay(params) {
  return request('/api/xadmin/v1/read_chapter_item/list_display', {
    params,
  });
}
export async function queryReadChapterItemDisplayOrder(params) {
  return request('/api/xadmin/v1/read_chapter_item/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

