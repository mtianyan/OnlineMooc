import { utils } from 'umi';
import { join } from 'path';

export default function(util: typeof utils) {
  return `\
import React, { useMemo } from 'react';
import { IRoute } from 'umi';
import { useModel } from '../core/umiExports';
import accessFactory from '../../access';
import AccessContext, { AccessInstance } from './context';
import { traverseModifyRoutes } from '${util.winPath(
    join(__dirname, '..', 'utils', 'runtimeUtil'),
  )}';

type Routes = IRoute[];

interface Props {
  routes: Routes;
  children: React.ReactNode;
}

const AccessProvider: React.FC<Props> = props => {
  if (typeof useModel !== 'function') {
    throw new Error('[plugin-access]: useModel is not a function, @umijs/plugin-initial-state is needed.')
  }

  const { children } = props;
  const { initialState } = useModel('@@initialState');

  const access: AccessInstance = useMemo(() => accessFactory(initialState as any), [initialState]);

  if (process.env.NODE_ENV === 'development' && (access === undefined || access === null)) {
    console.warn('[plugin-access]: the access instance created by access.ts(js) is nullish, maybe you need check it.');
  }

  props.routes.splice(0, props.routes.length, ...traverseModifyRoutes(props.routes, access));

  return React.createElement(
    AccessContext.Provider,
    { value: access },
    children,
  );
};

export default AccessProvider;
`;
}
