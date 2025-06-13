import FreestyleTransform from 'ember-freestyle/lib/ast-transform.js';

export default {
  plugins: [
    [
      '@babel/plugin-transform-typescript',
      {
        allExtensions: true,
        onlyRemoveTypeImports: true,
        allowDeclareFields: true,
      },
    ],
    '@embroider/addon-dev/template-colocation-plugin',
    [
      'babel-plugin-ember-template-compilation',
      {
        targetFormat: 'hbs',
        transforms: [FreestyleTransform],
      },
    ],
    [
      'module:decorator-transforms',
      { runtime: { import: 'decorator-transforms/runtime' } },
    ],
  ],
};
