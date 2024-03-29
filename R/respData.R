#' Respiratory illness data
#'
#' A clinical trial of 111 patients with respiratory illness from
#' two different clinics were randomized to receive either a placebo or an active treatment and
#' then were examined at baseline and consecutive four visits.
#' At each examination, respiratory status was determined. More details on
#' the dataset can be found in the book of Fitzmaurice et al. (2012).
#'
#'
#'
#' @format ## `respData`
#' A data frame with 555 rows and 5 columns:
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
"respData"
