import { RequestOptionsInit } from 'umi-request';
import { BaseOptions, BaseResult, OptionsWithFormat } from './types';
export declare type RequestService = string | ({
    url: string;
} & RequestOptionsInit);
export declare type Service<P extends any[]> = RequestService | ((...args: P) => RequestService);
declare function useRequest<R, P extends any[], U, UU extends U = any>(service: Service<P>, options: OptionsWithFormat<R, P, U, UU>): BaseResult<U, P>;
declare function useRequest<R, P extends any[]>(service: Service<P>, options?: BaseOptions<R, P>): BaseResult<R, P>;
export default useRequest;
