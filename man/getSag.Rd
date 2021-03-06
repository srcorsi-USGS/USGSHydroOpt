\name{getSag}
\alias{getSag}
\title{getSag}
\usage{
  getSag(dataAbs, waveCol, sag, colSubsetString,
    dataSummary, grnum)
}
\arguments{
  \item{dataAbs}{dataframe with absorbance spectra results,
  one column per sample (e.g.,GRnumber)}

  \item{waveCol}{column name as character to define the
  wavelengths (as integer) for which absorbance was
  measured}

  \item{sag}{dataframe with three columns. The first column
  represents the low wavelength (as integer), the second
  column represents the high wavelength (as integer) for
  which spectral slopes are to be defined, and the third
  column is the variable name to be used (as factor). A
  spectral slope is computed for each row.}

  \item{colSubsetString}{unique characters to identify
  which columns have absorbance data. The default is "gr"
  to comply with the common naming from the CA WSC}

  \item{dataSummary}{dataframe with summary absorbance and
  fluoresence data. This function adds columns to the end
  of this dataframe as additional summary data.}

  \item{grnum}{column name as character that defines the
  grnumbers in the dataSummary dataframe. These names are
  used to merge spectral slope data into the summary
  dataframe. This function assumes the column names of the
  dataAbs are grnumbers as well.}
}
\value{
  dataSummary dataframe with the additional columns
  containing spectral slopes as defined in sag for each
  sample (e.g., GRnumber).
}
\description{
  Computes spectral slopes from absorbance data using a
  linear regression to determine the first order decay
  function as defined in Helms et al. 2008, Limnol.
  Oceanogr., 53(3), 955-969. aL = aRef * exp(-S*(L-LRef))
  where a = absorbance coefficient, S = specral slope, and
  L = wavelength.
}
\examples{
dataAbs <- dfabs
waveCol <- "wavelengths"
sag <- dfsags
colSubsetString <- "gr"
dataSummary <- dfsummary
dataSummary <- dataSummary[,-c(64:67)] #remove columns with spectral slopes and re-compute with this function
grnum <- "GRnumber"
testSag <- getSag(dataAbs,waveCol,sag,colSubsetString,dataSummary,grnum)
}

