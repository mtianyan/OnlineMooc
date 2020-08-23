import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryCourse(params) {
  return request('/api/xadmin/v1/course', {
    params,
  });
}
export async function removeCourse(params) {
  return request(`/api/xadmin/v1/course/${params}`, {
    method: 'DELETE',
  });
}
export async function addCourse(params) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/course', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCourse(params, id) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/course/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
