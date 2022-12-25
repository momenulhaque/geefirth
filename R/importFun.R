#' @importFrom stats contrasts model.extract model.matrix pf toeplitz
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


# This xch function is from binarySimCLF package
xch <- function(n, rho){
  if (n <= 0){
    stop('n must be at least 1');
  }
  else if (n==1){
    r <- 1;
  }
  else if (n > 1){
    c1 = rep(rho,n-1);
    r = toeplitz(c(1, c1)) ;
  }
  return(r);
}


# This ar1 function is from binarySimCLF package
ar1 <- function(n, rho){
  if (n <= 0){
    stop('n must be at least 1');
  }
  if (n <= 2){
    return(xch(n,rho));
  }
  else{
    line1 <- c(1,rho^(1:(n-1)));
    return(toeplitz(line1));
  }
}
