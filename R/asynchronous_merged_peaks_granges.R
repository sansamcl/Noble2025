#' GenomicRanges of TRESLIN and MTBP Cut&Run Peaks From Asynchronously Cycling Cells
#'
#' A list of GenomicRanges representing TRESLIN or MTBP peaks used in Figure 1 of Noble et al. (2024) https://doi.org/10.1101/2024.02.02.578516.
#'
#' Peaks were called on .bam alignment files representing three replicates. The merged BAM files were generated using our Cut&Run analysis Snakemake workflow (see 10.5281/zenodo.6544023), which performs quality-controlled alignment, filtering, merging, and downsampling of replicates. Briefly:
#'
#' 1. **Trimming & Alignment**: Raw reads were trimmed using Trimmomatic and Cutadapt, then aligned to the genome with Bowtie2.
#' 2. **Filtering & Merging**: Aligned reads were filtered using samtools to remove low-quality reads and improper pairs, then merged by condition.
#' 3. **Species-of-Interest Filtering**: Reads mapping to the species of interest were retained by excluding spike-in and irrelevant sequences.
#' 4. **Read Count Normalization via Downsampling**: Within each replicate set, BAM files were downsampled to match the lowest read count.
#' 5. **Final Merging**: Downsampled BAMs were merged across replicates to generate the final `mergedDownSampledBam` for each condition.
#'
#' All peaks were called using MACS2 (`macs2 callpeak`) with `-f BAMPE -q 0.01`, and input was a merged Cut&Run on untagged HCT116.
#'
#' @format A named list of \code{GenomicRanges} objects:
#' \describe{
#'   \item{\code{TICRR_WT_HCT116_anti-GFP_1000_0.01_peaks.narrowPeak}}{TRESLIN Cut&Run peaks in asynchronous HCT116 cells, anti-GFP antibody at 1:1000, merged alignments from three replicates}
#'   \item{\code{TICRR_WT_HCT116_anti-GFP_250_0.01_peaks.narrowPeak}}{TRESLIN Cut&Run peaks in asynchronous HCT116 cells, anti-GFP antibody at 1:250, merged alignments from three replicates}
#'   \item{\code{MTBP_WT_HCT116_anti-GFP_1000_0.01_peaks.narrowPeak}}{MTBP Cut&Run peaks in asynchronous HCT116 cells, anti-GFP antibody at 1:1000, merged alignments from three replicates}
#'   \item{\code{MTBP_WT_HCT116_anti-GFP_250_0.01_peaks.narrowPeak}}{MTBP Cut&Run peaks in asynchronous HCT116 cells, anti-GFP antibody at 1:250, merged alignments from three replicates}
#' }
#'
#' @source GEO: GSE294620, GSE274463, GSE274464, GSE274465
#' @usage data(asynchronous_merged_peaks_granges)
#' @keywords datasets
"asynchronous_merged_peaks_granges"

