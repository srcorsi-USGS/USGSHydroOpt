\name{VectorizedTo3DArray}
\alias{VectorizedTo3DArray}
\title{VectorizedTo3DArray}
\usage{
  VectorizedTo3DArray(df, ExEm)
}
\arguments{
  \item{df}{dataframe with vectorized fluorescence data in
  the format from the CA WSC with one column containing
  both the Excitation and Emission pair, and all other
  columns representing a sample (e.g.,GRnumber)}

  \item{ExEm}{the character name of column with Excitation
  and Emmission wavelengths defined in this format:
  ###/###. For example, Excitation 250 and emmission 400
  would be represented as "250/400".}
}
\value{
  an array with 3-D fluorescence results. The 3 dimensions
  are the excitation wavelength (character), the emission
  wavelength (character), and the sample number,
  e.g.,"GRnumber" (character).
}
\description{
  Converts vectorized fluorescence dataframe into a 3-D
  array with Ex, Em, and GRnumber as the dimensions. This
  results in one 2-D excitation-emmission array per sample.
  Requires the reshape2 package.
}
\examples{
df <- dfFluor
ExEm <- "Wavelength.Pairs"
aTest <- VectorizedTo3DArray(df,ExEm)
}

