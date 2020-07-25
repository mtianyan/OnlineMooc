import { createLogger } from 'redux-logger';

export const dva = {
  config: {
    onError(err) {
      err.preventDefault();
    },
    onAction: createLogger(),
  },
};
