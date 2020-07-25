import { LoadMoreParams, LoadMoreOptionsWithFormat, LoadMoreResult, LoadMoreFormatReturn, LoadMoreOptions } from './types';
declare function useLoadMore<R extends LoadMoreFormatReturn, RR>(service: (...p: LoadMoreParams<R>) => Promise<RR>, options: LoadMoreOptionsWithFormat<R, RR>): LoadMoreResult<R>;
declare function useLoadMore<R extends LoadMoreFormatReturn, RR extends R = any>(service: (...p: LoadMoreParams<RR>) => Promise<R>, options: LoadMoreOptions<R>): LoadMoreResult<R>;
export default useLoadMore;
