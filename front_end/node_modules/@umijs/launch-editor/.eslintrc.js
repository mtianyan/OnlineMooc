const { strictEslint } = require('@umijs/fabric');

module.exports = {
  ...strictEslint,
  rules: {
    'no-underscore-dangle': [0],
    'arrow-parens': [0],
    'import/prefer-default-export': [0],
    '@typescript-eslint/prefer-namespace-keyword': [0],
    '@typescript-eslint/explicit-function-return-type': [0],
    '@typescript-eslint/no-explicit-any': [0],
    'no-restricted-globals': [0],
    '@typescript-eslint/interface-name-prefix': [0],
    '@typescript-eslint/no-object-literal-type-assertion': [0],
    '@typescript-eslint/no-var-requires': [0]
  },
};
