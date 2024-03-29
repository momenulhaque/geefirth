#' @title finding generalized inverse of a matrix
#'
#' @description finding generalized inverse of a matrix
#'
#' @param X matrix
#'
#'
#' @param tol tolerance
#'
#'
#' @return a matrix
#'
#' @export




ginv <- function(X, tol = sqrt(.Machine$double.eps))
{
  ## Generalized Inverse of a Matrix
  dnx <- dimnames(X)
  if(is.null(dnx)) dnx <- vector("list", 2)
  s <- svd(X)
  nz <- s$d > tol * s$d[1]
  structure(
    if(any(nz)) s$v[, nz] %*% (t(s$u[, nz])/s$d[nz]) else X,
    dimnames = dnx[2:1])
}

