% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make2SampleCpmGRanges.R
\name{make2SampleCpmGRanges}
\alias{make2SampleCpmGRanges}
\title{Compute CPM Tracks and y-axis Limits for Two Samples}
\usage{
make2SampleCpmGRanges(
  chrom = "chr3",
  trackStart = 5e+06,
  trackEnd = 5.5e+07,
  windowSize = 25000,
  stepSize = 5000,
  txBamFile1 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/TICRR_WT_HCT116_anti-GFP_250.bam",
  inBamFile1 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/WT_HCT116_anti-GFP_250.bam",
  txBamFile2 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/TICRR_WT_HCT116_anti-GFP_1000.bam",
  inBamFile2 =
    "../01_Asynchronous_HCT116/results/mergedDownSampledBams/WT_HCT116_anti-GFP_1000.bam"
)
}
\arguments{
\item{chrom}{Character. Chromosome to analyze (e.g., "chr3").}

\item{trackStart}{Integer. Start coordinate of the genomic region.}

\item{trackEnd}{Integer. End coordinate of the genomic region.}

\item{windowSize}{Integer. Size of the rolling window for smoothing (default: 25000).}

\item{stepSize}{Integer. Step size for sliding the window (default: 5000).}

\item{txBamFile1}{Character. Path to the first treatment BAM file.}

\item{inBamFile1}{Character. Path to the first control/input BAM file.}

\item{txBamFile2}{Character. Path to the second treatment BAM file.}

\item{inBamFile2}{Character. Path to the second control/input BAM file.}
}
\value{
A list with three components:
\itemize{
\item \code{tx_cpms_gr}: A \code{GRanges} object with CPM values for treatment samples.
\item \code{in_cpms_gr}: A \code{GRanges} object with CPM values for control samples.
\item \code{yLimits}: A numeric vector of y-axis limits based on CPM distribution quantiles.
}
}
\description{
This function computes CPM (counts per million) values for two treatment and two control BAM files
across a specified genomic region, using sliding windows. It returns GRanges objects for each condition
along with quantile-based y-axis limits useful for visualization.
}
\examples{
\dontrun{
result <- make2SampleCpmGRanges(chrom = "chr3", trackStart = 1e6, trackEnd = 20e6)
tx <- result$tx_cpms_gr
in <- result$in_cpms_gr
yLims <- result$yLimits
}
}
