import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryCourseOrg(params) {
  return request('/api/xadmin/v1/course_org', {
    params,
  });
}
export async function removeCourseOrg(params) {
  return request(`/api/xadmin/v1/course_org/${params}`, {
    method: 'DELETE',
  });
}
export async function addCourseOrg(params) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/course_org', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCourseOrg(params, id) {
  let fileFieldList = ["image"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/course_org/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
