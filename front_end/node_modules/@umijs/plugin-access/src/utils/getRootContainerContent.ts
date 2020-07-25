export default function() {
  return `\
import React from 'react';
import AccessProvider from './AccessProvider';

export function rootContainer(container: React.ReactNode, { routes }) {
  return React.createElement(AccessProvider, { routes }, container);
}
`;
}
