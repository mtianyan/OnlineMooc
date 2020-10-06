import {parse} from 'querystring';
import pathRegexp from 'path-to-regexp';

/* eslint no-useless-escape:0 import/prefer-default-export:0 */
const reg = /(((^https?:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+(?::\d+)?|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)$/;
export const isUrl = path => reg.test(path);
export const isAntDesignPro = () => {
  if (ANT_DESIGN_PRO_ONLY_DO_NOT_USE_IN_YOUR_PRODUCTION === 'site') {
    return true;
  }

  return window.location.hostname === 'preview.pro.ant.design';
}; // 给官方演示站点用，用于关闭真实开发环境不需要使用的特性

export const isAntDesignProOrDev = () => {
  const {NODE_ENV} = process.env;

  if (NODE_ENV === 'development') {
    return true;
  }

  return isAntDesignPro();
};
export const getPageQuery = () => parse(window.location.href.split('?')[1]);
/**
 * props.route.routes
 * @param router [{}]
 * @param pathname string
 */

export const getAuthorityFromRouter = (router = [], pathname) => {
  const authority = router.find(
    ({routes, path = '/', target = '_self'}) =>
      (path && target !== '_blank' && pathRegexp(path).exec(pathname)) ||
      (routes && getAuthorityFromRouter(routes, pathname)),
  );
  if (authority) return authority;
  return undefined;
};
export const getRouteAuthority = (path, routeData) => {
  let authorities;
  routeData.forEach(route => {
    // match prefix
    if (pathRegexp(`${route.path}/(.*)`).test(`${path}/`)) {
      if (route.authority) {
        authorities = route.authority;
      } // exact match

      if (route.path === path) {
        authorities = route.authority || authorities;
      } // get children authority recursively

      if (route.routes) {
        authorities = getRouteAuthority(path, route.routes) || authorities;
      }
    }
  });
  return authorities;
};

export const deepCopy = (target) => {
  let copyed_objs = [];//此数组解决了循环引用和相同引用的问题，它存放已经递归到的目标对象
  function _deepCopy(target) {
    if ((typeof target !== 'object') || !target) {
      return target;
    }
    for (let i = 0; i < copyed_objs.length; i++) {
      if (copyed_objs[i].target === target) {
        return copyed_objs[i].copyTarget;
      }
    }
    let obj = {};
    if (Array.isArray(target)) {
      obj = [];//处理target是数组的情况
    }
    copyed_objs.push({target: target, copyTarget: obj});
    Object.keys(target).forEach(key => {
      if (obj[key]) {
        return;
      }
      obj[key] = _deepCopy(target[key]);
    });
    return obj;
  }

  return _deepCopy(target);
};

export const buildFileFormData = (params, fileFieldList) => {
  let fileData = new FormData();
  for (let index in fileFieldList) {
    let fileField = fileFieldList[index];
    fileData.append(fileField, params[fileField].file.originFileObj);
  }
  for (let key in params) {
    if (fileFieldList.includes(key)) {
      delete params[key];
    }
  }
  for (let key in params) {
    fileData.append(key, params[key]);
  }

  return fileData;
};

export const dealTime = (params, dateFieldList) => {
  for (let key in params) {
    if (dateFieldList.includes(key)) {
      params[key + '_start'] = params[key][0];
      params[key + '_end'] = params[key][1];
      delete params[key];
    }
  }
};

export const getTableColumns = (cp) =>{
  return cp.map((one) => {
    if ('backendType' in one) {
      if (one.backendType === 'foreignKey') {
        one.dataIndex = one.dataIndex + '_text';
      }
    }
    if (one.valueType === 'dateTime') {
      one.valueType = 'dateRange';
    }
    delete one.initialValue;
    return one;
  });
}


export const fieldErrorHandle = (err, formRef)=> {
  for (let key in err.data.fields_errors) {
    var value = err.data.fields_errors[key];
    formRef.current.setFields([
      {
        name: key,
        errors: value,
      },
    ]);
  }
}
