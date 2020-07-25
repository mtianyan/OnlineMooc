import * as fs from 'fs';
import { parseFile, log } from './utils';
import guessEditor from './guessEditor';
import openEditor from './openEditor';
import EditorError from './error';
import { IResult, IOptions } from './types';
import { ERROR_CODE, SUPPORTED_EDITTORS } from './enum';

const launchEditor = async (file: string, options: IOptions = {}): Promise<IResult> => {
  const { editor } = options;
  const { fileName, lineNumber, colNumber } = parseFile(file);
  if (!fs.existsSync(fileName)) {
    return {
      success: false,
      message: `fileName: ${fileName} not existed`,
    };
  }

  const aliasEditor = SUPPORTED_EDITTORS[editor];

  const guessedEditor = guessEditor(aliasEditor);
  if (!guessedEditor) {
    throw new EditorError({
      editor: editor || 'UNKNOW',
      success: false,
      code: ERROR_CODE.UNKNOWN,
    })
  }
  const { name, commands } = guessedEditor;
  log('guessedEditor name', name);
  log('guessedEditor commands', commands);

  const params = {
    fileName,
    lineNumber,
    colNumber,
  }

  const res = await openEditor({
    name,
    commands,
    ...params,
  });

  log('launchEditor result', res);

  return res;
}

export = launchEditor
