

#' @title finding intra-cluster correlation matrix
#'
#' @description xch for exchangeable and ar1 for autoregressive 1
#'
#' @param n cluster size
#'
#'
#' @param rho icc
#'
#'
#' @return a matrix
#'
#' @export




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

