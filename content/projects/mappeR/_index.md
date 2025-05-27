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
`mappeR` configured by running

```sh
nix-shell -p rPackages.mappeR
```