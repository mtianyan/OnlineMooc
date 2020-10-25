import request from 'umi-request';

import {buildFileFormData} from '@/utils/utils'
export async function queryCatalog(params) {
  return request('/api/xadmin/v1/catalog', {
    params,
  });
}
export async function removeCatalog(params) {
  return request(`/api/xadmin/v1/catalog/${params}`, {
    method: 'DELETE',
  });
}
export async function addCatalog(params) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request('/api/xadmin/v1/catalog', {
    method: 'POST',
    data: fileData,
  });
}
export async function updateCatalog(params, id) {
  let fileFieldList = []
  let fileData = buildFileFormData(params, fileFieldList);
  return request(`/api/xadmin/v1/catalog/${id}`, {
    method: 'PUT',
    data: fileData,
  });
}
export async function queryCatalogVerboseName(params) {
  return request('/api/xadmin/v1/catalog/verbose_name', {
    params,
  });
}
export async function queryCatalogListDisplay(params) {
  return request('/api/xadmin/v1/catalog/list_display', {
    params,
  });
}
export async function queryCatalogDisplayOrder(params) {
  return request('/api/xadmin/v1/catalog/display_order', {
    params,
  });
}

export async function updateUserPassword(params) {
    return request('/api/xadmin/v1/list_change_password', {
     method: 'POST',
     data: { ...params},
});
}

