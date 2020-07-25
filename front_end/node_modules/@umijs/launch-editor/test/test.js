const launchEditor = require('../lib');
const path = require('path');

(async () => {
  try {
    await launchEditor(`${path.join(__dirname, 'test.js')}:8:1`)
  } catch (e) {
    console.error('user error handler', e);
  }

  try {
    const res = await launchEditor(`${path.join(__dirname, 'test.js:8:1')}`, {
      editor: 'atom'
    })
    console.log('resresres', res);
  } catch (e) {
    console.error('user error handler 2', e);
  }

  try {
    const res = await launchEditor(`${path.join(__dirname, 'test.js:8:1')}`, {
      editor: 'sublime'
    })
    console.log('resresres', res);
  } catch (e) {
    console.error('user error handler 2', e);
  }
})()
