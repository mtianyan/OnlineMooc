import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryCourseResource(params) {
  return request('/api/xadmin/v1/course_resource', {
    params,
  });
}
export async function removeCourseResource(params) {
  return request(`/api/xadmin/v1/course_resource/${params}`, {
    method: 'DELETE',
  });
}
export async function addCourseResource(params) {
  let fileFieldList = ["download"]
  let fileData = buildFileFormData(params, fileFieldList);
  console.log("add")
  for (var [a, b] of fileData.entries()) {
    console.log(a, b);
  }
  return request('/api/xadmin/v1/course_resource', {
    method: 'POST',
    data: fileData,
  }).catch(error=>{
    console.log(error)
  });
}
export async function updateCourseResource(params, id) {
  let fileFieldList = ["download"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/course_resource/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
