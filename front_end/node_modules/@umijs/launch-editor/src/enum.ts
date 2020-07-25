export enum ERROR_CODE {
  UNKNOWN = 'UNKNOWN',
  EPERM = 'EPERM',
  ERROR = 'ERROR',
  OTHER = 'OTHER',
}

export enum SUPPORTED_EDITTORS {
  'vscode' = 'code',
  'sublime' = 'subl',
  'atom' = 'atom',
  'webstorm' = 'webstorm',
  'idea' = 'idea',
}

export type IEditor = keyof typeof SUPPORTED_EDITTORS;

export type IEditorExec = string[];

export type ISupportedEditor = {
  [key in IEditor]: {
    command: IEditorExec;
  };
}

export type SYSTEMS = 'osx' | 'linux' | 'windows';
