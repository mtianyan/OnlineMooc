import { parseFile } from '../lib/utils';

describe('utils', () => {
  it('parseFile', () => {
    expect(parseFile('index.js')).toEqual({
      fileName: 'index.js',
      lineNumber: "",
      colNumber: "",
    });

    expect(parseFile('src/guessEditor.ts:93')).toEqual({
      fileName: 'src/guessEditor.ts',
      lineNumber: "93",
      colNumber: "",
    });

    expect(parseFile('src/guessEditor.ts:93:40')).toEqual({
      fileName: 'src/guessEditor.ts',
      lineNumber: "93",
      colNumber: "40",
    });

    expect(parseFile('src/guessEditor.ts:93:40:30:22')).toEqual({
      fileName: 'src/guessEditor.ts',
      lineNumber: "93",
      colNumber: "40",
    });
  })
})
