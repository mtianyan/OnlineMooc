import * as os from 'os';
import debug from 'debug';
import { SYSTEMS } from './enum';

export const log = (...args) => {
  // @ts-ignore
  return debug('umi-editor')(...args);
}

export const getOS = (): SYSTEMS => {
  if (typeof process === 'undefined') {
    return undefined;
  }
  if (process.platform === 'win32') return 'windows';
  if (process.platform === 'darwin') return 'osx';
  if (process.platform === 'linux') return 'linux';
  return undefined;
};

// Assume WSL / "Bash on Ubuntu on Windows" is being used, and
// that the file exists on the Windows file system.
// `os.release()` is "4.4.0-43-Microsoft" in the current release
// build of WSL, see: https://github.com/Microsoft/BashOnWindows/issues/423#issuecomment-221627364
// When a Windows editor is specified, interop functionality can
// handle the path translation, but only if a relative path is used.
export const isWSL = (fileName: string): boolean => getOS() === 'linux' && fileName.startsWith('/mnt/') && /Microsft/i.test(os.release())

export type IParseFile = (file: string) => Record<'fileName' | 'lineNumber' | 'colNumber', string>;

export const parseFile: IParseFile = (file) => {
  const fileName = file.replace(/:(\d+)(:(\d+))?/g, '')
  const match = file.match(/:(\d+)(:(\d+))?/)
  const lineNumber = match && match[1];
  const colNumber = match && match[3];

  return {
    fileName,
    lineNumber: lineNumber || '',
    colNumber: colNumber || '',
  }
}
