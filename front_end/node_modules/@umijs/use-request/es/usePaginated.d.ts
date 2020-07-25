import { BasePaginatedOptions, PaginatedFormatReturn, PaginatedOptionsWithFormat, PaginatedParams, PaginatedResult } from './types';
declare function usePaginated<R, Item, U extends Item = any>(service: (...p: PaginatedParams) => Promise<R>, options: PaginatedOptionsWithFormat<R, Item, U>): PaginatedResult<Item>;
declare function usePaginated<R, Item, U extends Item = any>(service: (...p: PaginatedParams) => Promise<PaginatedFormatReturn<Item>>, options: BasePaginatedOptions<U>): PaginatedResult<Item>;
export default usePaginated;
