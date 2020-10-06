import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryStudent(params) {
  return request('/api/xadmin/v1/student', {
    params,
  });
}
export async function removeStudent(params) {
  return request(`/api/xadmin/v1/student/${params}`, {
    method: 'DELETE',
  });
}
export async function addStudent(params) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/student', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateStudent(params, id) {
  let fileFieldList = ["avatar"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/student/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
