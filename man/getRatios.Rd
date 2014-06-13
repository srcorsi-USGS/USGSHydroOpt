% Generated by roxygen2 (4.0.1): do not edit by hand
\name{getRatios}
\alias{getRatios}
\title{getRatios}
\usage{
getRatios(dataSummary, signals, grnum = "GRnumber")
}
\arguments{
\item{dataSummary}{dataframe with summary absorbance and fluoresence data. This}

\item{signals}{vector of variable names in dataSummary for generating ratios}

\item{grnum}{Column name that defines the grnumbers in the dataSummary dataframe.
These names are used to merge ratio data into the summary dataframe.}
}
\description{
Computes ratios from optical data. Assumes that the signal with the greatest
mean is in the numerator making the mean ratio greater than one.
}
