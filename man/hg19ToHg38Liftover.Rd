% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hg19ToHg38Liftover.R
\name{hg19ToHg38Liftover}
\alias{hg19ToHg38Liftover}
\title{Lift over genomic coordinates from hg19 to hg38}
\usage{
hg19ToHg38Liftover(hg19BedInput, hg38BedOutput)
}
\arguments{
\item{hg19BedInput}{Path to the input BED file in hg19 coordinates.}

\item{hg38BedOutput}{Path to the output BED file in hg38 coordinates.}
}
\value{
None (output is saved to hg38BedOutput file).
}
\description{
This function takes a BED file in hg19 coordinates and performs a liftOver
to convert the coordinates to hg38 using the provided chain file.
}
\details{
The function downloads the hg19 to hg38 liftover chain file from
UCSC if it's not already present in the working directory.
}
\examples{
hg19ToHg38Liftover("input_hg19.bed", "output_hg38.bed")

}
