\name{getMeanFl}
\alias{getMeanFl}
\title{getMeanFl}
\usage{
  getMeanFl(a, signals, Peak, Ex1, Ex2, Em1, Em2,
    dataSummary, grnum)
}
\arguments{
  \item{a}{an array with 3-D fluorescence results. The 3
  dimensions are the excitation wavelength (character), the
  emission wavelength (character), and the sample number
  (character). This function assumes names of the third
  dimension in this array are sample numbers (GRnumber)}

  \item{signals}{dataframe defining the max and min
  excitation (integer) and the max and min emmission
  (integer) wavelengths for which to compute averages.
  Contains one column (character) with the names of the
  various parameters (e.g.,OB1,S1.50,B,T).}

  \item{Peak}{character column for the column in signals
  with parameters to be computed}

  \item{Ex1}{the first integer excitation wavelength in the
  range}

  \item{Ex2}{the second integer excitation wavelength in
  the range. This can be blank if one specific excitation
  wavelength is used.}

  \item{Em1}{the first integer emmission wavelength in the
  range}

  \item{Em2}{the second integer emmission wavelength in the
  range. This can be blank if one specific emmission
  wavelength is used.}

  \item{dataSummary}{dataframe with summary absorbance and
  fluoresence data. This function adds columns to the end
  of this dataframe as additional summary data.}

  \item{grnum}{character column name that defines the
  grnumbers in the dataSummary dataframe.}
}
\value{
  dataSummary dataframe with the additional freshness index
  columns.
}
\description{
  Computes different excitation-emission (EEM) signals from
  fluoresence data and adds them to a summary optical
  dataframe.
}
\examples{
a <- a
signals <- signals
Peak <- "Peak"
Ex1 <- "Ex1"
Ex2 <- "Ex2"
Em1 <- "Em1"
Em2 <- "Em2"
dataSummary <- dfsummary
grnum <- "GRnumber"
testMeanFl <- getMeanFl(a,signals,Peak,Ex1,Ex2,Em1,Em2,dataSummary,grnum)
}

