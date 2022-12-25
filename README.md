
<!-- README.md is generated from README.Rmd. Please edit that file -->

# geefirth

<!-- badges: start -->
<!-- badges: end -->

The goal of geefirth is to fit Generalized Estimating Equation (GEE) for
correlated binary data with separation or near-to-separation

## Installation

You can install the development version of geefirth like so:

``` r
devtools::install_github("momenulhaque/geefirth") # it will install the package
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(geefirth)
## basic example code

data(geefirth)

# Fitting GEE for quasi-separated data

geefirth(y ~ x + obstime, id=quasiDat$id, data=quasiDat, corstr = "exchangeable")

#> $call
#> geefirth(formula = y ~ x + obstime, id = quasiDat$id, data = quasiDat, 
#>     corstr = "exchangeable")
#> 
#> $coefficients
#>             coefficients  std.err     Wald  p.val
#> (Intercept)    -6.606564 1.019044 42.03059 0.0000
#> x               5.169648 1.042593 24.58672 0.0000
#> obstime         1.492377 1.047385  2.03034 0.1568
#> 
#> $correlation
#>           [,1]      [,2]      [,3]      [,4]
#> [1,] 1.0000000 0.2338123 0.2338123 0.2338123
#> [2,] 0.2338123 1.0000000 0.2338123 0.2338123
#> [3,] 0.2338123 0.2338123 1.0000000 0.2338123
#> [4,] 0.2338123 0.2338123 0.2338123 1.0000000
#> 
#> attr(,"class")
#> [1] "gee"

# Fitting GEE for near to quasi-separated data

geefirth(y ~ x + obstime, id=nearDat$id, data=nearDat, corstr = "exchangeable")

#> $call
#> geefirth(formula = y ~ x + obstime, id = nearDat$id, data = nearDat, 
#>     corstr = "exchangeable")
#> 
#> $coefficients
#>             coefficients   std.err       Wald  p.val
#> (Intercept)   -2.3317438 0.6145346 14.3967125 0.0002
#> x              1.6932550 0.7801154  4.7110703 0.0320
#> obstime        0.7243084 1.1093875  0.4262784 0.5151
#> 
#> $correlation
#>           [,1]      [,2]      [,3]      [,4]
#> [1,] 1.0000000 0.2891556 0.2891556 0.2891556
#> [2,] 0.2891556 1.0000000 0.2891556 0.2891556
#> [3,] 0.2891556 0.2891556 1.0000000 0.2891556
#> [4,] 0.2891556 0.2891556 0.2891556 1.0000000
#> 
#> attr(,"class")
#> [1] "gee"
```
