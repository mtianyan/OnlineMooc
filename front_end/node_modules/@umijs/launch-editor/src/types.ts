import EditorError from './error';
import { IEditor } from './enum';

export interface IOptions {
  editor?: IEditor;
  editorOpts?: string[];
}

interface IResultSuccess {
  success: boolean;
  editorBin?: string;
  message?: string;
}

export type IResult = IResultSuccess | EditorError | {} | undefined;
