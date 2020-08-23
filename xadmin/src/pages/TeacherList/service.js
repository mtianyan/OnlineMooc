import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryTeacher(params) {
  return request('/api/xadmin/v1/teacher', {
    params,
  });
}
export async function removeTeacher(params) {
  return request(`/api/xadmin/v1/teacher/${params}`, {
    method: 'DELETE',
  });
}
export async function addTeacher(params) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/teacher', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateTeacher(params, id) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/teacher/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
