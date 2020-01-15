# Composer Github Action

This Github action allows you to run [Composer](https://getcomposer.org/) in your Github workflows. Note that Git tags
must start with a "v" prefix, for example "v1.23.4-5".

## Example workflow

````yaml
name: Build and release Docker images
on:
  push:
    branches-ignore:
      - '**'
    tags:
      - 'v*.*.*'

jobs:
  build:
    runs-on: ubuntu-latest
    steps:

      - uses: actions/checkout@v2
        with:
          fetch-depth: 1

      - name: Install Composer dependencies
        uses: flownative/action-composer@master
        with:
          tag_ref: ${{ github.ref }}
–
````
