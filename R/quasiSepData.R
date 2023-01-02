#' Respiratory illness data: A random subset  of 15 patients
#'
#' This is a random subset is drawn from clinic 2 (seed 545). Other variables are similar as `respData`.
#'
#'
#'
#' @format ## `quasiSepData`
#' A data frame with 75 rows and 5 columns:
#' \describe{
#'   \item{id}{patient id}
#'   \item{illness}{disease status good = 1 or poor = 0}
#'   \item{trt}{treatment status, P = present, A = absent}
#'   \item{clinic}{Clinic id, 1 = first clinic, 2 = second clinic}
#'   \item{time}{follow-up time, 0 = baseline, 1 = first visit,
#'   2 = second visit, 3 = third visit, 4 = fourth visit}
#'  }
#'
#'
#' @references
#' Fitzmaurice GM, Laird NM, Ware JH. Applied longitudinal analysis.
#' John Wiley & Sons; 2012 Oct 23.
#'
#'
#'
#'
"quasiSepData"
