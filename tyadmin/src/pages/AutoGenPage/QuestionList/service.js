import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryQuestion(params) {
  return request('/api/xadmin/v1/question', {
    params,
  });
}
export async function removeQuestion(params) {
  return request(`/api/xadmin/v1/question/${params}`, {
    method: 'DELETE',
  });
}
export async function addQuestion(params) {
  let fileFieldList = ["icon"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/question', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateQuestion(params, id) {
  let fileFieldList = ["icon"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/question/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryQuestionVerboseName(params) {
  return request('/api/xadmin/v1/question/verbose_name', {
    params,
  });
}
export async function queryQuestionListDisplay(params) {
  return request('/api/xadmin/v1/question/list_display', {
    params,
  });
}
export async function queryQuestionDisplayOrder(params) {
  return request('/api/xadmin/v1/question/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

