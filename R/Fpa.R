#' Fpa from Flim
#'
#' Calculate the value of Fpa from Flim and sigmaF.
#'
#' @param Flim the value of the Flim reference point.
#' @param sigmaF the estimation uncertainty in F (standard error of logF in the
#'        terminal year).
#'
#' @return Value of Fpa.
#'
#' @note
#' By comparing the current F to Fpa, one can answer the question: are we at
#' least 95\% sure that F is below Flim, given the estimation uncertainty?
#'
#' The ICES (2016) technical guidelines define Fpa as:
#'
#' \deqn{F_\mathrm{pa} = F_\mathrm{lim} \exp(-1.645\sigma_F)}{
#'       Fpa = Flim * exp(-1.645*sigmaF)}
#'
#' The \code{Fpa} function can also be used to evaluate reference points based
#' on harvest rate: Hpa from Hlim and sigmaH.
#'
#' @author Arni Magnusson.
#'
#' @references
#' ICES. 2016. Advice Technical Guidelines: ICES fisheries management reference
#' points for category 1 stocks. \cite{Draft document version 30 (2016-04-21),
#' available at the ACOM Meetings area on the ICES Sharepoint.}
#'
#' @seealso
#' \code{\link{Bpa}} calculates that reference point from Blim and sigmaB.
#'
#' \code{\link{sigmaPA}} calculates the implicit sigma from PA reference points.
#'
#' \code{\link{icesAdvice-package}} gives an overview of the package.
#'
#' @examples
#' Fpa(0.90, 0.15)
#'
#' @keywords distribution
#'
#' @export

Fpa <- function(Flim, sigmaF)
{
  refpt <- Flim * exp(-1.645*sigmaF)
  return(refpt)
}