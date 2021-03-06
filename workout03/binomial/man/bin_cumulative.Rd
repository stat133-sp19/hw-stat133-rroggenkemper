% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{bin_cumulative}
\alias{bin_cumulative}
\title{bin_cumulative}
\usage{
bin_cumulative(trials, prob)
}
\arguments{
\item{trials}{number of trials}

\item{prob}{chance of success}
}
\value{
dataframe of cumulative probability of successes in trials of chance prob for all possible successes
}
\description{
Computes cumulative chances of all successes
}
\examples{
# chances of successes in 10 trials with p=.5
bin_cumulative(10, .5)

# chances of successes in 8 trials with p=.7
bin_cumulative(8, .7)

}
