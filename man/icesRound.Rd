% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icesRound.R
\name{icesRound}
\alias{icesRound}
\title{ICES Rounding Method}
\usage{
icesRound(x, percent = FALSE, sign = percent, na = "")
}
\arguments{
\item{x}{the values to round.}

\item{percent}{whether to format values with a percent suffix.}

\item{sign}{whether to format values with a sign prefix.}

\item{na}{what to return when x is \code{NA}.}
}
\value{
Rounded values as a \code{noquote} string vector, retaining trailing zeros.
}
\description{
Round values according to the ICES Advice Technical Guidelines.
}
\note{
This function implements the following ICES rounding method:
\tabular{rl}{
   i) \tab Round to two significant figures when the first non-zero digit is
           2 or larger.\cr
  ii) \tab Round to three significant figures when the first non-zero digit
           is 1.
}
As indicated in the ICES (2017) technical guidelines, this rounding method
should not be applied to biomass, catch, or number of individuals. For those
quantities, use the normal \code{\link{round}} function instead.
}
\examples{
icesRound(0.123456)
icesRound(0.2468)

## Formatted string or numeric
icesRound(1.0)
as.numeric(icesRound(1.0))

## Percent, sign, NA
icesRound(33.33, percent = TRUE)
icesRound(33.33, sign = TRUE)
icesRound(c(1, NA, 3))
icesRound(c(1, NA, 3), na = NA)

## Example from the ICES Technical Guidelines
Actual <- c(0.35776, 0.34665, 0.202, 0.12665, 0.001567, 0.002567, 0.013415,
            0.02315, 1.168, 2.15678)
Rounded <- icesRound(Actual)
print(data.frame(Actual = as.character(Actual), Rounded), row.names = FALSE)

## Continued example from Guidelines, now rounding percentages
Actual <- c(9.546, 10.546, 23.445, -1.482, -9.09, 0.51, 130.11, 584)
Rounded <- icesRound(Actual, percent = TRUE)
print(data.frame(Actual = as.character(Actual), Rounded), row.names = FALSE)

}
\references{
ICES (2017) Rounding rules to be applied in ICES advice.
\doi{10.17895/ices.pub.3038}{\emph{ICES Advice Technical
Guidelines 16.5.4}}.
}
\seealso{
\code{\link{signif}} rounds values to a specified number of significant
digits.

\code{\link{icesAdvice-package}} gives an overview of the package.
}
\author{
Colin Millar and Arni Magnusson.
}
