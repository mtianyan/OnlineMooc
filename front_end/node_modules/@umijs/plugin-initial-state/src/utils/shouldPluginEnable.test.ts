import { join } from 'path';
import { shouldPluginEnable as s } from './shouldPluginEnable';

const fixture = join(__dirname, '..', 'fixtures', 'shouldPluginEnable');

test('should not enable', () => {
  expect(s(join(fixture, 'n-empty.js'))).toEqual(false);
  expect(s(join(fixture, 'n-more-syntax.js'))).toEqual(false);
  expect(s(join(fixture, 'n-ts-type-as.ts'))).toEqual(false);
  expect(s(join(fixture, 'n-tsx.tsx'))).toEqual(false);
});

test('should enable', () => {
  expect(s(join(fixture, 'y-export-specifiers.js'))).toEqual(true);
  expect(s(join(fixture, 'y-export-const.js'))).toEqual(true);
  expect(s(join(fixture, 'y-export-function.js'))).toEqual(true);
  expect(s(join(fixture, 'y-export-ts-as.ts'))).toEqual(true);
  expect(s(join(fixture, 'y-export-tsx-with-jsx.tsx'))).toEqual(true);
});
