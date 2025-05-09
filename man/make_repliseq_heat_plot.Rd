% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_repliseq_heat_plot.R
\name{make_repliseq_heat_plot}
\alias{make_repliseq_heat_plot}
\title{Create a Repli-seq heatmap for a genomic region}
\usage{
make_repliseq_heat_plot(chromosomeToPlot, startToPlot, endToPlot)
}
\arguments{
\item{chromosomeToPlot}{Chromosome name (e.g., "chr1").}

\item{startToPlot}{Start coordinate (integer).}

\item{endToPlot}{End coordinate (integer).}
}
\value{
A \code{ggplot2} object representing the Repli-seq heatmap.
}
\description{
This function generates a heatmap of Repli-seq signal intensity across a specified
genomic region. It extracts Repli-seq signal from a preloaded GRanges object
(assumed to be named \code{HCT_Repliseq_gr}) and plots the signal across S-phase fractions.
}
\details{
The heatmap has genomic coordinates on the x-axis and S-phase fraction bins (S1–S16) on the y-axis.

The function expects a \code{GRanges} object named \code{HCT_Repliseq_gr}
to be available, where metadata columns S1 to S16 contain replication signal across S-phase.
}
