# @umi-material/@umijs/route-utils

## Usage

```bash
# npm
npm i @umijs/route-utils --save

## yarn
yarn add @umijs/route-utils
```

## API

```tsx
import {
  transformRoute,
  getMatchMenu,
  getMatchMenu,
} from ' @umijs/route-utils';

const routes = [
  {
    path: '/welcome',
    name: 'welcome',
  },
  {
    path: '/admin',
    name: 'admin',
    access: 'canAdmin',
  },
  {
    name: 'list.table-list',
    path: '/list',
  },
];

const { menuData, breadcrumb } = transformRoute(routes);

console.log(menuData[0].name); // welcome

console.log(breadcrumb.get('/welcome').name); // welcome
```

### MenuDataItem

```tsx
import { MenuDataItem } from '@umijs/route-utils';

export interface MenuDataItem {
  children?: MenuDataItem[];
  hideChildrenInMenu?: boolean;
  hideInMenu?: boolean;
  icon?: React.ReactNode;
  locale?: string | false;
  name?: string;
  key?: string;
  pro_layout_parentKeys?: string[];
  path?: string;
  [key: string]: any;
}
```

## LICENSE

MIT
