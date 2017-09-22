# Web Examples

Think of these as **highly-recommended** recommendations for web projects at Driver

## Every Web Project

1. [Setup your IDE](http://editorconfig.org/) to respect a `.editorconfig` file.
2. Download the `.editorconfig` to your project root.
```sh
$ wget https://raw.githubusercontent.com/drivergroup/best-practices/master/web-examples/.editorconfig
```

### JS-Specific

1. Install eslint
```sh
$ npm install --save-dev eslint
```
2. Add a `.eslintrc` to the project root

3. Configure `"lint"` script in `package.json` to lint js files
```json
"scripts": {
  "lint": "eslint ."
}
```

Ensure tests pass before every Pull Request

### TypeScript-Specific

1. Install tslint
```sh
$ npm install --save-dev tslint
```
2. Add a `tsconfig.json` to the project root

3. Configure `"lint"` script in `package.json`
```json
"scripts": {
  "lint": "tslint --project . --type-check"
}
```

<!-- TODO: 4. Add the Driver [tsconfig.json](link here) -->

Ensure tests pass before every Pull Request
