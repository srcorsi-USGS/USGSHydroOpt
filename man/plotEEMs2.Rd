\name{plotEEMs2}
\alias{plotEEMs2}
\title{plotEEMs2}
\usage{
  plotEEMs2(mat, Ex, Em, nlevels, Peaks, peakCol, peakEx,
    peakEm, mainTitle)
}
\arguments{
  \item{mat}{2-D matrix of excitation-emmission spectra}

  \item{Ex}{numeric excitation wavelengths}

  \item{Em}{numeric emmission wavelengths}

  \item{nlevels}{numeric color levels for contour graph. 50
  is commonly used for a value here.}

  \item{Peaks}{dataframe with peaks to be indicated on the
  graph}

  \item{peakCol}{character column name in Peaks which
  contains the abbreviation for that peak}

  \item{peakEx}{character column name in Peaks to use for
  excitation wavelengths}

  \item{peakEm}{character column name in Peaks to use for
  emmission wavelengths}

  \item{mainTitle}{Plot title}
}
\value{
  Excitation-Emission (EEMs) Plot with the important peaks
  identified
}
\description{
  Plot contour graph of excitation emmission spectra with
  defined peaks indicated on the graph
}
\examples{
GRnum <- "gr13307"
mat <- a[,,GRnum]
Ex <- as.numeric(names(a[,1,1]))
Em <- as.numeric(names(a[1,,1]))
nlevels <- 50
Peaks <- ex_ems
peakCol <- "Peak"
peakEx <- "ExCA"
peakEm <- "EmCA"
mainTitle <- "Example EEMs Plot"
exampleEEMs <- plotEEMs2(mat=mat,Ex=Ex,Em=Em,nlevels=nlevels,Peaks=Peaks,peakCol=peakCol,
peakEx=peakEx,peakEm=peakEm,mainTitle=mainTitle)
}

