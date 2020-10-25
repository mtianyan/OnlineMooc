import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryAnswer(params) {
  return request('/api/xadmin/v1/answer', {
    params,
  });
}
export async function removeAnswer(params) {
  return request(`/api/xadmin/v1/answer/${params}`, {
    method: 'DELETE',
  });
}
export async function addAnswer(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/answer', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateAnswer(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/answer/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryAnswerVerboseName(params) {
  return request('/api/xadmin/v1/answer/verbose_name', {
    params,
  });
}
export async function queryAnswerListDisplay(params) {
  return request('/api/xadmin/v1/answer/list_display', {
    params,
  });
}
export async function queryAnswerDisplayOrder(params) {
  return request('/api/xadmin/v1/answer/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

