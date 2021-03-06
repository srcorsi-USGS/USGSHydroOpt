\name{getAbs}
\alias{getAbs}
\title{getAbs}
\usage{
  getAbs(dataAbs, waveCol, wavs, colSubsetString,
    dataSummary, grnum)
}
\arguments{
  \item{dataAbs}{dataframe with absorbance spectra results,
  one column per sample, and one column with the
  wavelengths.}

  \item{waveCol}{character column name to define the
  wavelengths for which absorbance was measured.}

  \item{wavs}{numeric vector with absorbance wavelengths to
  extract.}

  \item{colSubsetString}{unique characters to identify
  which columns have absorbance data. The default is "gr"
  to comply with the common naming from the CA WSC.}

  \item{dataSummary}{dataframe with summary absorbance and
  fluoresence data. This function adds columns to the end
  of this dataframe as additional summary data.}

  \item{grnum}{character column name that defines the
  grnumbers in the dataSummary dataframe. These names are
  used to merge spectral slope data into the summary
  dataframe. This function assumes the column names of the
  dataAbs are grnumbers as well.}
}
\value{
  summary absorbance and fluoresence dataframe with the
  additional absorbance peaks extracted using getAbs
}
\description{
  Retrieves individual absorbance coefficients
}
\examples{
dataAbs <- dfabs
waveCol <- "wavelengths"
wavs <- c(430,530,630,730)
colSubsetString <- "gr"
dataSummary <- dfsummary
grnum <- "GRnumber"
testAbs <- getAbs(dataAbs,waveCol,wavs,
               colSubsetString,dataSummary,grnum)
}

