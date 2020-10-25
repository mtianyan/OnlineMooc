import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryArticle(params) {
  return request('/api/xadmin/v1/article', {
    params,
  });
}
export async function removeArticle(params) {
  return request(`/api/xadmin/v1/article/${params}`, {
    method: 'DELETE',
  });
}
export async function addArticle(params) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/article', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateArticle(params, id) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/article/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryArticleVerboseName(params) {
  return request('/api/xadmin/v1/article/verbose_name', {
    params,
  });
}
export async function queryArticleListDisplay(params) {
  return request('/api/xadmin/v1/article/list_display', {
    params,
  });
}
export async function queryArticleDisplayOrder(params) {
  return request('/api/xadmin/v1/article/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

