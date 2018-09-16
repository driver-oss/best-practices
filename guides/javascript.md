## JavaScript

- Type with flow

- Style with [prettier](https://prettier.io/) ([see section below](#prettier))

- Lint with eslint and use `eslint:recommended` at a minimum

- Test with [jest](https://facebook.github.io/jest/) and enzyme


- 2 spaces (instead of tabs)

- Promises (not callbacks)

- No [decorators](https://medium.com/google-developers/exploring-es7-decorators-76ecb65fb841)

- No [mobx](https://mobx.js.org/)

- Place tests alongside the file(s) it tests (not in a separate directory)

- End test files with `.test.js`

### React/Redux

- Lint with [`tslint-react`](https://github.com/palantir/tslint-react) or eslint's [`plugin:react/recommended`](https://github.com/yannickcr/eslint-plugin-react) at a minimum.

- No unnecessary and empty `<div>`’s

- If `this.props.<variable name>` is used more than once, dereference it at the top of `render`.

- Extract variables used in `render()` to the top of `render()`

- API calls should lie in a testable file outside of components.


- Components should not wait for promises to resolve, instead listen on props via redux’ `mapStateToProps()`.

- Declare and export components in separate places (otherwise the web inspector cannot name components properly)

### Flowtype

- Any types used in more than one file should be placed in `src/types.js`

- Add flow linting via [eslint-plugin-flowtype](https://github.com/gajus/eslint-plugin-flowtype)

- Disallow "`any`" with [eslint no-weak-types](https://github.com/gajus/eslint-plugin-flowtype#no-weak-types) (use "`Obect`" and "`Function`" to cover complicated use-cases)


- In components which use `mapStateToProps`, separate `OwnProps` from `ConnectedProps` into separate types. Join them with `type Props = OwnProps & ConnectedProps`. In addition, if using `mapDispatchToProps`, create a type `DispatchProps` and join that with `Props`.

###  𝓣𝓢 TypeScript 𝓣𝓢

- Lint with [`tslint:recommended`](https://github.com/palantir/tslint) at a minimum.

- No implicit any (type everything that’s not inferable)

- Any variable declared without an initial value should be typed

### Prettier 

Add the following to `package.json`:

```json
  "prettier": {
    "overrides": [
      {
        "files": ["*.js", "*.scss", "*.css", "*.pcss"],
        "options": {
          "singleQuote": true,
          "trailingComma": "all"
        }
      }
    ]
  }
```

The following information about prettier is better described on the prettier documentation [here](https://prettier.io/docs/en/precommit.html#option-1-lint-staged-https-githubcom-okonet-lint-staged).
Use `lint-staged` to auto-call prettier in a `precommit` "`script`":

```json
  "lint-staged": {
    "src/**/*.scss": ["prettier --parser scss --write", "git add"],
    "src/**/*.{js,css}": ["prettier --parser flow --write", "git add"],
    "nightwatch/**/*.js": ["prettier --write", "git add"]
  }
```

### Npm

* Support the following `script`'s in your root `package.json`:

1. `“watch”`: Starts the dev server
2. `“build”`: Builds static assets (if they exist) "`/src`" -> "`/build`"
3. `“test”`: Runs all tests (linting first, then unit tests)
