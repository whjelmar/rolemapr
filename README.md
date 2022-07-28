
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![Code Coverage
Status](https://codecov.io/gh/whjelmar/rolemapr/branch/master/graph/badge.svg)](https://codecov.io/github/whjelmar/rolemapr?branch=main)
[![lifecycle](https://img.shields.io/badge/lifecycle-EXPERIMENTAL-orange)](https://www.tidyverse.org/lifecycle/#experimental)
[![lifecycle](https://img.shields.io/github/issues/whjelmar/rolemapr)](https://img.shields.io/github/issues/whjelmar/rolemapr)

# rolemapr

A package to create a series of documents that detail the roles and
responsibilities at play within a Target Operating Model

![Logo](https://github.com/whjelmar/rolemapr/logo.png)

## Installation

Eventually this package may make it to CRAN, but right now follow the
latest stable version or the development instructions below.

When it is available, it can be installed directly from CRAN.

``` r
install.packages("rolemapr")
```

However, the latest stable version (if any) could be found on
[GitHub](https://github.com/whjelmar/rolemapr), and installed using
`devtools` package.

``` r
if (!require(devtools)) install.packages("devtools")
devtools::install_github("whjelmar/rolemapr")
```

If you would like to install the latest [development
version](https://github.com/whjelmar/rolemapr/tree/develop), you may
install the develop branch.

``` r
if (!require(devtools)) install.packages("devtools")
devtools::install_github("whjelmar/rolemapr", ref = "develop")
```

## Usage/Examples

TODO

## Screenshots

![App Screenshot](https://github.com/whjelmar/screenshots/rolemapr.png)

## Demo

Insert link to demo

## Features

-   blah
-   blah
-   blah

## Running Tests

To run tests, run the following command

``` r
devtools::test()
```

## Environment Variables

To run this project, you will need to add the following environment
variables to your .env file

`API_KEY`

`ANOTHER_API_KEY`

## API Reference

#### Get all items

``` http
  GET /api/items
```

| Parameter | Type     | Description                |
|:----------|:---------|:---------------------------|
| `api_key` | `string` | **Required**. Your API key |

#### Get item

``` http
  GET /api/items/${id}
```

| Parameter | Type     | Description                       |
|:----------|:---------|:----------------------------------|
| `id`      | `string` | **Required**. Id of item to fetch |

#### add(num1, num2)

Takes two numbers and returns the sum.

\## Color Reference

| Color         | Hex                                                                |
|---------------|--------------------------------------------------------------------|
| Example Color | ![\#0a192f](https://via.placeholder.com/10/0a192f?text=+) \#0a192f |
| Example Color | ![\#f8f8f8](https://via.placeholder.com/10/f8f8f8?text=+) \#f8f8f8 |
| Example Color | ![\#00b48a](https://via.placeholder.com/10/00b48a?text=+) \#00b48a |
| Example Color | ![\#00d1a0](https://via.placeholder.com/10/00b48a?text=+) \#00d1a0 |

## Documentation

[Documentation](https://rolemapr.github.io/)

## License

[See License.MD](https://github.com/whjelmar/rolemapr/LICENSE.md)

## Authors

-   [(**whjelmar?**)](https://www.github.com/whjelmar)

## Contributing

Contributions are always welcome!

See `CONTRIBUTING.md` for ways to get started.

Please adhere to this project’s
[`code of conduct`](https://github.com/whjelmar/rolemapr/CONTRIBUTING.md).

## Acknowledgements

-   [DataExplorer](https://github.com/boxuancui/DataExplorer) which was
    the inspiration for the structure of the package and the genesis of
    some of the code.
-   [Awesome Readme
    Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
-   [Awesome README](https://github.com/matiassingers/awesome-readme)
-   [How to write a Good
    readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)

## Support

For support, email <walter@hjelmar.com> or join our Slack channel.

## Feedback

If you have any feedback, please reach out to us at <walter@hjelmar.com>

## Appendix

### FAQ

See [`FAQ.md`](https://github.com/whjelmar/rolemapr/FAQ.md)

### Lessions

See [`LESSIONS.md`](https://github.com/whjelmar/rolemapr/LESSIONS.md)

## Roadmap

See [`ROADMAP.md`](https://github.com/whjelmar/rolemapr/ROADMAP.md)

## Tech Stack

**Client:** TODO

**Server:** TODO
