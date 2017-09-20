# Best Practices

Make your code 💯 - A collection of best practices for software

## ☕️ JavaScript ☕️

* 2 spaces (instead of tabs)
* Lint with `eslint:recommended` at a minimum
* Promises (not callbacks)

### ⚛️ React/Redux ⚛️

* Lint with [`tslint-react`](https://github.com/palantir/tslint-react) or eslint's [`plugin:react/recommended`](https://github.com/yannickcr/eslint-plugin-react) at a minimum.
* No unnecessary and empty `<div>`’s
* If `this.props.<variable name>` is used more than once, dereference it at the top of `render`.
* Extract variables used in `render()` to the top of `render()`
* API calls should lie in a testable file outside of components.

* Components should not wait for promises to resolve, instead listen on props via redux’ `mapStateToProps()`.
* Declare and export components in separate places (otherwise the web inspector cannot name components properly)

###  𝓣𝓢 TypeScript 𝓣𝓢

* Lint with [`tslint:recommended`](https://github.com/palantir/tslint) at a minimum.
* No implicit any (type everything that’s not inferable)
* Any variable declared without an initial value should be typed (`let patientId;`)
* In components which use `mapStateToProps`, separate `ownProps` from `connectedProps` into separate interfaces

## 💅 CSS 💅

* Prefer Flexbox
* Classes should describe elements and not be generic (`Bigbox` -> `FAQContainer`)
* Mobile: <= 620px
* Tablet: 620px - 1024px
* Desktop: > 1024px

## HTML

* Use `<button>` tags over `<a>` tags for actions.
* Use svg's over all other image formats when possible.
* All `<img>` tags should have `“alt”` text.
* Only use tables for tabular data (not for layout)
* Make use of html5 elements like `<header>`, `<footer>`, `<nav>`, `<section>`, etc.

## Npm

* Support the following `script`'s in your root `package.json`:

1. `“watch”`: Starts the dev server
2. `“build”`: Builds static assets (if they exist)
4. `“test”`: Runs all tests (linting first, then unit tests)

## 🕸 Browsers 🕸

* Avoid supporting versions of Internet Explorer before IE11.