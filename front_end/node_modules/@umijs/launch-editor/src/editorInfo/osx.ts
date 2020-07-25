import * as path from 'path';
import * as userHome from 'user-home';

export default [
  {
    name: 'code',
    process: ['Visual Studio Code.app'],
    location: [
      path.join('/', 'Applications', 'Visual Studio Code.app'),
      path.join(userHome, '.vscode'),
    ],
    commands: [
      'code',
      '/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code',
    ],
    opts: [],
  },
  {
    name: 'code-insiders',
    process: ['Visual Studio Code - Insiders.app'],
    location: [
      path.join('/', 'Applications', 'Visual Studio Code - Insiders.app'),
    ],
    commands: [
      'code-insiders',
      '/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code-insiders',
    ],
    opts: [],
  },
  {
    name: 'atom',
    process: ['Atom.app'],
    location: [
      path.join('/', 'Applications', 'Atom.app'),
    ],
    commands: [
      'atom',
      '/Applications/Atom.app/Contents/MacOS/Atom',
      '/Applications/Atom.app/Contents/Resources/app/atom.sh',
    ],
  },
  {
    name: 'subl',
    process: ['Sublime Text'],
    location: [
      path.join('/', 'Applications', 'Sublime Text.app'),
      path.join('/', 'Applications', 'Sublime Text 2.app'),
      path.join('/', 'Applications', 'Sublime Text Dev.app'),
    ],
    commands: [
      'subl',
      '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl',
      '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl',
      '/Applications/Sublime Text Dev.app/Contents/SharedSupport/bin/subl',
    ],
  },
  {
    name: 'webstorm',
    process: ['WebStorm.app'],
    location: [
      path.join('/', 'Applications', 'WebStorm.app'),
    ],
    commands: [
      'webstorm',
      'wstorm',
      '/Applications/WebStorm.app/Contents/MacOS/webstorm',
    ],
  },
  {
    name: 'idea',
    process: ['IntelliJ IDEA.app'],
    location: [
      path.join('/', 'Applications', 'IntelliJ IDEA.app'),
    ],
    commands: [
      'webstorm',
      '/Applications/IntelliJ IDEA.app/Contents/MacOS/idea',
      'wstorm',
    ],
  },
]
