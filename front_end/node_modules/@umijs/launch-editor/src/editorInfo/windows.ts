import * as os from 'os';
import * as path from 'path';

export default [
  {
    name: 'code',
    process: ['Code.exe'],
    location: [
      path.join(os.homedir(), 'AppData', 'Local', 'Programs', 'Microsoft VS Code'),
    ],
    commands: [
      'code',
      path.join(os.homedir(), 'AppData', 'Local', 'Programs', 'Microsoft VS Code', 'bin', 'code.cmd'),
    ],
    opts: [],
  },
  {
    name: 'subl',
    process: ['sublime_text.exe'],
    location: [
      path.join(os.homedir(), '..', 'Program Files', 'Sublime Text 3'),
      path.join(os.homedir(), '..', 'Program Files', 'Sublime Text'),
    ],
    commands: [
      'subl',
      path.join(os.homedir(), '..', 'Program Files', 'Sublime Text 3', 'subl.exe'),
    ],
    opts: [],
  },
  {
    name: 'webstorm',
    process: ['webstorm.exe', 'webstorm64.exe'],
    location: [],
    commands: [
      'webstorm',
      'wstorm',
    ],
    opts: [],
  },
]
