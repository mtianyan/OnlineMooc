import * as path from 'path';
import { getOS } from './utils';

export default (
  editor,
  fileName,
  lineNumber,
  colNumber,
) => {
  const editorBasename = path.basename(editor).replace(/\.(exe|cmd|bat)$/i, '');
  const system = getOS();
  switch (editorBasename) {
    case 'atom':
    case 'Atom':
    case 'Atom Beta':
    case 'subl':
    case 'sublime':
    case 'sublime_text':
      return [`${fileName}:${lineNumber}:${colNumber}`];
    case 'wstorm':
    case 'charm':
      return [`${fileName}:${lineNumber}`];
    case 'notepad++':
      return [`-n${lineNumber}`, `-c${colNumber}`, fileName];
    case 'vim':
    case 'mvim':
    case 'joe':
    case 'gvim':
      return [`+${lineNumber}`, fileName];
    case 'emacs':
    case 'emacsclient':
      return [`+${lineNumber}:${colNumber}`, fileName];
    case 'rmate':
    case 'mate':
    case 'mine':
      return ['--line', lineNumber, fileName];
    case 'code':
    case 'Code':
    case 'code-insiders':
    case 'Code - Insiders': {
      if (system === 'linux') {
        return ['-r', '-g', '--user-data-dir', path.dirname(fileName), fileName];
      }
      return ['-r', '-g', `${fileName}:${lineNumber}:${colNumber}`]
    }
    case 'appcode':
    case 'clion':
    case 'clion64':
    case 'idea':
    case 'idea64':
    case 'phpstorm':
    case 'phpstorm64':
    case 'pycharm':
    case 'pycharm64':
    case 'rubymine':
    case 'rubymine64':
    case 'webstorm':
    case 'webstorm64':
    case 'goland':
    case 'goland64':
      return ['--line', lineNumber, fileName]
  }

  // For all others, drop the lineNumber until we have
  // a mapping above, since providing the lineNumber incorrectly
  // can result in errors or confusing behavior.
  return [fileName];
}
