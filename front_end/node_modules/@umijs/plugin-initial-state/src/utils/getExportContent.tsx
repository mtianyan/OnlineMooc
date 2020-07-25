// @ts-ignore
export default (modelPath: string) => `
// @ts-ignore
import { InitialState as InitialStateType } from '../${modelPath}';

export type InitialState = InitialStateType;
export const __PLUGIN_INITIAL_STATE = 1;
`;
