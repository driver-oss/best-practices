# Best Practices

Make your code 💯 - A collection of best practices for software

This repository contains [guides on best-practices](guides/) for many
languages and technologies used at Driver. Check out the
[website](https://drivergroup.github.io/best-practices).

## Building

The website is built with [pandoc](https://pandoc.org/) and published
via [GitHub Pages](https://pages.github.com/).

Changes can be applied by running `make` and viewing the website
locally in the directory ".ghpages".

The website can be published by running `make publish`. This will
build the website locally and push any resulting HTML to the github
branch "gh-pages". Be sure that your changes have been accepted and
merged before doing this!
