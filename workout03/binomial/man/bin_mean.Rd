% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{bin_mean}
\alias{bin_mean}
\title{bin_mean}
\usage{
bin_mean(trials, prob)
}
\arguments{
\item{trials}{number of trials}

\item{prob}{chance of success}
}
\value{
the mean of a binomial with given parameters
}
\description{
Computes the mean of a binomial
}
\examples{
# mean of 10 trials with p=.5
bin_mean(10, .5)

# mean of 8 trials with p=.7
bin_mean(8, .7)

}
