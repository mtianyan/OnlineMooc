export default function() {
  return `\
import React from 'react';
import accessFactory from '@/access';

export type AccessInstance = ReturnType<typeof accessFactory>;

const AccessContext = React.createContext<AccessInstance>(null!);

export default AccessContext;
`;
}
