% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gss.R
\docType{data}
\name{gss}
\alias{gss}
\title{Greater Silver Smelt}
\format{
Data frame containing 18 columns:
\tabular{ll}{
  \code{Year} \tab year\cr
  \code{5}    \tab number of five-year-olds in the catch (thousands)\cr
  \code{6}    \tab number of six-year-olds in the catch (thousands)\cr
  \code{...}\cr
  \code{21}   \tab number of twenty-one-year-olds in the catch (thousands)
}
}
\source{
\url{https://stockassessment.org/datadisk/stockassessment/userdirs/user3/ARU.27.5b6a_WKGSS2020_FINAL/data/cn.dat}
}
\usage{
gss
}
\description{
Catch at age of greater silver smelt in areas 5b and 6a, in crosstab format.
}
\details{
The data were presented and analyzed at the 2020 ICES Benchmark Workshop on
Greater Silver Smelt.
}
\examples{
gss
agesFbar(gss)
}
\seealso{
\code{\link{agesFbar}} calculates a suitable age range for Fbar.

\code{\link{icesAdvice-package}} gives an overview of the package.
}
