import React from 'react';
import { BasePaginatedOptions, LoadMoreOptions, Options } from './types';
declare type Config = Options<any, any, any, any> | BasePaginatedOptions<any> | LoadMoreOptions<any>;
declare const ConfigContext: React.Context<Config>;
export default ConfigContext;
