## Dependencies

``` sh
$ bundle
```

## Running the whole test suite

``` sh
$ cucumber
```

## Running code linter

``` sh
$ rubocop
```

## Running test suite and writing output to html

``` sh
$ cucumber --format html --out report.html
```

Targets:
1. Argparser + Config
2. Cucumber/rspec parallel test execution
3. Page object pattern (site-prism)
4. Reporting (allure integration)
