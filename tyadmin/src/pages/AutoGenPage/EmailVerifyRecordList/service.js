import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryEmailVerifyRecord(params) {
  return request('/api/xadmin/v1/email_verify_record', {
    params,
  });
}
export async function removeEmailVerifyRecord(params) {
  return request(`/api/xadmin/v1/email_verify_record/${params}`, {
    method: 'DELETE',
  });
}
export async function addEmailVerifyRecord(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/email_verify_record', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateEmailVerifyRecord(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/email_verify_record/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryEmailVerifyRecordVerboseName(params) {
  return request('/api/xadmin/v1/email_verify_record/verbose_name', {
    params,
  });
}
export async function queryEmailVerifyRecordListDisplay(params) {
  return request('/api/xadmin/v1/email_verify_record/list_display', {
    params,
  });
}
export async function queryEmailVerifyRecordDisplayOrder(params) {
  return request('/api/xadmin/v1/email_verify_record/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

