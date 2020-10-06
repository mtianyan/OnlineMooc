import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryNav(params) {
  return request('/api/xadmin/v1/nav', {
    params,
  });
}
export async function removeNav(params) {
  return request(`/api/xadmin/v1/nav/${params}`, {
    method: 'DELETE',
  });
}
export async function addNav(params) {
  let fileFieldList = ["icon"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/nav', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateNav(params, id) {
  let fileFieldList = ["icon"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/nav/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
