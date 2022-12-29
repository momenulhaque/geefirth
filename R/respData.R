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
#'   \item{illness}{disease status good =1 or poor = 0}
#'   \item{Treatment}{treatment status, P = present, A = absent}
#'   \item{Clinic}{Clinic id, 1 = first clinic, 2 = second clinic}
#'   \item{Time}{follow-up time, y0 = baseline, y1 = first visit,
#'   y2 = second visit, y3 = third visit, y4 = fourth visit}
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