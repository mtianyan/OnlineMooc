import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryComment(params) {
  return request('/api/xadmin/v1/comment', {
    params,
  });
}
export async function removeComment(params) {
  return request(`/api/xadmin/v1/comment/${params}`, {
    method: 'DELETE',
  });
}
export async function addComment(params) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/comment', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateComment(params, id) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/comment/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
