import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryLesson(params) {
  return request('/api/xadmin/v1/lesson', {
    params,
  });
}
export async function removeLesson(params) {
  return request(`/api/xadmin/v1/lesson/${params}`, {
    method: 'DELETE',
  });
}
export async function addLesson(params) {
  let fileFieldList = ["img","banner"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/lesson', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateLesson(params, id) {
  let fileFieldList = ["img","banner"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/lesson/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
