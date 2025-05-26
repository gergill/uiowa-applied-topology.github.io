+++
title = "mappeR"
layout = "single"
+++

# Motivation

The development of mappeR was motivated by the need for an updated R
implementation of the mapper algorithm, as Dr. Paul Pearson's popular [TDAMapper](https://github.com/paultpearson/TDAmapper/) package is no longer being updated or supported by CRAN.

# Installation

## R

`mappeR` is available on [CRAN](https://cran.csail.mit.edu/web/packages/mappeR/index.html), and can be installed with

```r
install.packages("mappeR")
```

You can then load the package (in a script, say) with

```r
library(mappeR)
```

## Nix

As a part of CRAN, `mappeR` is availiable on `nixpkgs`. You can open a `nix-shell` with
`mappeR` configured with

```sh
nix-shell -p rPackages.mappeR
```

You can also run

```sh
git clone https://github.com/Uiowa-Applied-Topology/mappeR.git
nix develop
```
to install `R`, `devtools`, `usethis`, `roxygen2`, `testthat`, `igraph`, and `fastcluster`. You can then build and install the package from within R using

```r
library(devtools)
build()
install()
```

This might take a while.

# Usage

The core function in `mappeR` is `create_mapper_object`, which takes four
parameters:

1. `data`, an R dataframe

This should be a standard R dataframe.

2. `dists`, an R `dist` object

You can use the built-in function `as.dist` to transform a `matrix` into a
`dist` object.

3. `filtered_data`, a the output of a lens function run on `data`

This can be as simple as extracting a single column of the input dataframe.

4. `cover_element_tests`, a list of membership functions for each element of a
   cover of the codomain of the lens function

Each of the functions in `cover_element_tests` should accept a single filtered datapoint as a parameter, and output `TRUE` or `FALSE`.

5. `clusterer`, a function which can accept a list of distance matrices and
   output a list of cluster assignments

The `clusterer` should be able to accept a list of `dist` objects, one for each
level set obtained from the codomain cover. Each "cluster assignment" should be
a named `vector` whose names are the same as the datapoints in each cluster
(which should match names in `data`), and whose values are integers associated
to unique clusters. The integers only need to be unique per level set; `mappeR`
will treat clusters from different level sets with the same integer tag as
distinct vertices in the whole mapper graph.