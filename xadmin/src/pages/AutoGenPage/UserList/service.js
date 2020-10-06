import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryUser(params) {
  return request('/api/xadmin/v1/user', {
    params,
  });
}
export async function removeUser(params) {
  return request(`/api/xadmin/v1/user/${params}`, {
    method: 'DELETE',
  });
}
export async function addUser(params) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/user', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateUser(params, id) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/user/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
