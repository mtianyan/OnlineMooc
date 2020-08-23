import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryUserProfile(params) {
  return request('/api/xadmin/v1/user_profile', {
    params,
  });
}
export async function removeUserProfile(params) {
  return request(`/api/xadmin/v1/user_profile/${params}`, {
    method: 'DELETE',
  });
}
export async function addUserProfile(params) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/user_profile', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateUserProfile(params, id) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/user_profile/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
