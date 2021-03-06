\name{getRatios}
\alias{getRatios}
\title{getRatios}
\usage{
  getRatios(dataSummary, sigs, grnum)
}
\arguments{
  \item{dataSummary}{dataframe with summary absorbance and
  fluoresence data. This}

  \item{sigs}{signals vector of variable names in
  dataSummary for generating ratios}

  \item{grnum}{Column name that defines the grnumbers in
  the dataSummary dataframe. These names are used to merge
  ratio data into the summary dataframe.}
}
\value{
  dataSummary dataframe with the additional columns of
  spectral ratios computed using getRatios
}
\description{
  Computes ratios from optical data. Assumes that the
  signal with the greatest mean is in the numerator making
  the mean ratio greater than one.
}
\examples{
dataSummary <- dfsummary
sigs <- ratioSignals[which(ratioSignals[2]>0),1]
grnum <- "GRnumber"
test <- getRatios(dataSummary,sigs,grnum)
}

