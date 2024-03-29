% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geefirth.R
\name{geefirth}
\alias{geefirth}
\title{Fitting GEE for correlated binary data with separation or near-to-separation}
\usage{
geefirth(formula, id = id, data = parent.frame(), corstr = "independence")
}
\arguments{
\item{formula}{Similar as glm}

\item{id}{cluster id and needs to be sorted}

\item{data}{a data frame or tibble}

\item{corstr}{working correlation structure, "independence" (default), "ar1", "unstr", "exchangeable".}
}
\value{
a list of estimates
}
\description{
geefirth fits GEE with Firth-type penalization to provide
bias-corrected finite  estimate of the regression coefficient  in case of separation or
near-to-separation. In addition, it provides bias-corrected sandwich estimate of the
standard error of the penalized GEE estimate.
}
\examples{

data(geefirth)

# Fitting GEE for quasi-separated data

geefirth(y ~ x + obstime, id=id, data=quasiDat, corstr = "exchangeable");

# Fitting GEE for near to quasi-separated data

geefirth(y ~ x + obstime, id=id, data=nearDat, corstr = "exchangeable");

}
\references{
Mondol MH, Rahman MS. Bias-reduced and separation-proof GEE with small or sparse longitudinal binary data. Statistics in Medicine. 2019 Feb 22;38(14):2544-60.
}
\author{
Momenul Haque Mondol \email{mmondol@isrt.ac.bd} Muhammad Ehsanul Karim \email{ehsan.karim@ubc.ca}
}
