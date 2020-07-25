const { readdirSync, readFileSync, existsSync } = require('fs');
const { join } = require('path');
const assert = require('assert');

const dir = join(__dirname, './lib/errors');
const errors = readdirSync(dir)
  .filter(error => error.startsWith('ERR_'))
  .reduce((memo, error) => {
    const docs = [
      // why mdx?
      // https://github.com/cnpm/npminstall/blob/d88b7d42b31172ef53d482f4d65b2b00558ad8be/lib/download/npm.js#L529-L535
      join(dir, error, 'README.mdx'),
      join(dir, error, 'README_zh-CN.mdx'),
    ];
    assert(
      existsSync(docs[0]) && existsSync(docs[1]),
      `doc ${docs[0]} or ${docs[1]} don't exists.`
    );
    const indexFile = join(dir, error, 'index.js');
    const errorObj = existsSync(indexFile) ? require(indexFile) : {};
    memo[error] = Object.assign(errorObj, {
      details: {
        'en': readFileSync(docs[0], 'utf-8'),
        'zh-CN': readFileSync(docs[1], 'utf-8'),
      },
    });
    return memo;
  }, {});

module.exports = errors;
