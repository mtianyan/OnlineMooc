import request from 'umi-request';
import {buildFileFormData} from '@/utils/utils'
export async function queryCart(params) {
  return request('/api/xadmin/v1/cart', {
    params,
  });
}
export async function removeCart(params) {
  return request(`/api/xadmin/v1/cart/${params}`, {
    method: 'DELETE',
  });
}
export async function addCart(params) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/cart', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCart(params, id) {
  let fileFieldList = ["img"]
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/cart/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
