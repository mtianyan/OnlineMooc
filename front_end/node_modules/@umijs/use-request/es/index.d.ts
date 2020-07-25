/// <reference types="react" />
import { BaseOptions, BasePaginatedOptions, BaseResult, CombineService, LoadMoreFormatReturn, LoadMoreOptions, LoadMoreOptionsWithFormat, LoadMoreParams, LoadMoreResult, OptionsWithFormat, PaginatedFormatReturn, PaginatedOptionsWithFormat, PaginatedParams, PaginatedResult } from './types';
import useAsync from './useAsync';
import useLoadMore from './useLoadMore';
import usePaginated from './usePaginated';
declare function useRequest<R = any, P extends any[] = any, U = any, UU extends U = any>(service: CombineService<R, P>, options: OptionsWithFormat<R, P, U, UU>): BaseResult<U, P>;
declare function useRequest<R = any, P extends any[] = any>(service: CombineService<R, P>, options?: BaseOptions<R, P>): BaseResult<R, P>;
declare function useRequest<R extends LoadMoreFormatReturn, RR>(service: CombineService<RR, LoadMoreParams<R>>, options: LoadMoreOptionsWithFormat<R, RR>): LoadMoreResult<R>;
declare function useRequest<R extends LoadMoreFormatReturn, RR extends R>(service: CombineService<R, LoadMoreParams<R>>, options: LoadMoreOptions<RR>): LoadMoreResult<R>;
declare function useRequest<R = any, Item = any, U extends Item = any>(service: CombineService<R, PaginatedParams>, options: PaginatedOptionsWithFormat<R, Item, U>): PaginatedResult<Item>;
declare function useRequest<R = any, Item = any, U extends Item = any>(service: CombineService<PaginatedFormatReturn<Item>, PaginatedParams>, options: BasePaginatedOptions<U>): PaginatedResult<Item>;
declare const UseAPIProvider: import("react").Provider<BaseOptions<any, any> | OptionsWithFormat<any, any, any, any> | BasePaginatedOptions<any> | LoadMoreOptions<any>>;
export { useAsync, usePaginated, useLoadMore, UseAPIProvider };
export default useRequest;
