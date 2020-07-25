import { BaseOptions, BaseResult, OptionsWithFormat, Service } from './types';
declare function useAsync<R, P extends any[], U, UU extends U = any>(service: Service<R, P>, options: OptionsWithFormat<R, P, U, UU>): BaseResult<U, P>;
declare function useAsync<R, P extends any[]>(service: Service<R, P>, options?: BaseOptions<R, P>): BaseResult<R, P>;
export default useAsync;
