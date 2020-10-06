import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryRead(params) {
  return request('/api/xadmin/v1/read', {
    params,
  });
}
export async function removeRead(params) {
  return request(`/api/xadmin/v1/read/${params}`, {
    method: 'DELETE',
  });
}
export async function addRead(params) {
  let fileFieldList = ["img","detailImg"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/read', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateRead(params, id) {
  let fileFieldList = ["img","detailImg"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/read/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
