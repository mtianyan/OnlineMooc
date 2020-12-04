import request from 'umi-request';

import { buildFileFormData } from '@/utils/utils'
export async function queryArticleType(params) {
  return request('/api/xadmin/v1/article_type', {
    params,
  });
}
export async function removeArticleType(params) {
  return request(`/api/xadmin/v1/article_type/${params}`, {
    method: 'DELETE',
  });
}
export async function addArticleType(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/article_type', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateArticleType(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/article_type/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryArticleTypeVerboseName(params) {
  return request('/api/xadmin/v1/article_type/verbose_name', {
    params,
  });
}
export async function queryArticleTypeListDisplay(params) {
  return request('/api/xadmin/v1/article_type/list_display', {
    params,
  });
}
export async function queryArticleTypeDisplayOrder(params) {
  return request('/api/xadmin/v1/article_type/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

