export default (relEntryFile: string) =>
  relEntryFile
    ? `import { useState, useEffect, useCallback } from 'react';
import { Models } from '../../plugin-model/useModel';
import * as app from '../../../app';

export type InitialState = Models<'@@initialState'>;
async function getInitialState() {
  return await app.getInitialState();
}

type ThenArg<T> = T extends Promise<infer U> ? U : T

const initState = {
  initialState: undefined as ThenArg<ReturnType<typeof getInitialState>> | undefined,
  loading: true,
  error: undefined as Error | undefined,
}

export default () => {
  const [ state, setState ] = useState(initState);

  const refresh = useCallback(async() => {
    setState(s => ({ ...s, loading: true, error: undefined }))
    try {
      const asyncFunc = () => new Promise<ReturnType<typeof getInitialState>>(res => res(getInitialState()));
      const ret = await asyncFunc();
      setState(s => ({ ...s, initialState: ret, loading: false }));
    } catch(e) {
      setState(s => ({ ...s, error: e, loading: false }));
    }
  }, []);

  const setInitialState = useCallback((initialState: ThenArg<ReturnType<typeof getInitialState>> | undefined) => {
    setState(s => ({ ...s, initialState, loading: false }))
  }, []);

  useEffect(()=>{
    refresh();
  }, []);

  return {
    ...state,
    refresh,
    setInitialState,
  }
}
`
    : 'export default () => ({ loading: false, refresh: () => {} })';
