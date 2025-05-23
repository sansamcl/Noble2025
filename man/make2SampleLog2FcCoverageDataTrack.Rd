% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make2SampleLog2FcCoverageDataTrack.R
\name{make2SampleLog2FcCoverageDataTrack}
\alias{make2SampleLog2FcCoverageDataTrack}
\title{Create a DataTrack for 2-Sample Log2 Fold Change (Log2FC) Coverage Data}
\usage{
make2SampleLog2FcCoverageDataTrack(
  chromosome = "chr3",
  start = 5e+06,
  end = 5.5e+07,
  windowSize = 25000,
  stepSize = 5000,
  txBamFile1 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/TICRR_WT_HCT116_anti-GFP_250.bam",
  inBamFile1 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/WT_HCT116_anti-GFP_250.bam",
  txBamFile2 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/TICRR_WT_HCT116_anti-GFP_1000.bam",
  inBamFile2 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/WT_HCT116_anti-GFP_1000.bam",
  trackName = "Log2FC",
  HistogramColor = "#1b9e77",
  yLimits = c(-0.5, 0.5)
)
}
\arguments{
\item{chromosome}{The chromosome for the genomic region of interest.}

\item{start}{The start position of the genomic region.}

\item{end}{The end position of the genomic region.}

\item{windowSize}{The size of the sliding windows for Log2FC calculation.}

\item{stepSize}{The step size for sliding windows.}

\item{txBamFile1}{The path to the first treatment BAM file.}

\item{inBamFile1}{The path to the first control BAM file.}

\item{txBamFile2}{The path to the second treatment BAM file.}

\item{inBamFile2}{The path to the second control BAM file.}

\item{trackName}{The name for the DataTrack.}

\item{HistogramColor}{The color for the histogram in the DataTrack.}
}
\value{
A DataTrack object for 2-sample Log2FC coverage data.
}
\description{
This function generates a DataTrack for 2-sample Log2FC coverage data based on
input BAM files. It calculates Log2FC values for specified genomic regions
and creates a DataTrack for visualization.
}
\examples{
\dontrun{
# Example usage:
dt <- make2SampleLog2FcCoverageDataTrack(chromosome="chr3", start=5000000, end=55000000,
                                         windowSize=25000, stepSize=5000,
                                         txBamFile1="path/to/txBamFile1.bam",
                                         inBamFile1="path/to/inBamFile1.bam",
                                         txBamFile2="path/to/txBamFile2.bam",
                                         inBamFile2="path/to/inBamFile2.bam",
                                         trackName="Log2FC", HistogramColor="#1b9e77")
}

}
