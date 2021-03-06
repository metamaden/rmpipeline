% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/snakemake_functions.R
\name{get_h5db_rg}
\alias{get_h5db_rg}
\title{Get HDF5 database of red/green signals, from compilation data tables}
\usage{
get_h5db_rg(
  files.dpath = "recount-methylation-files",
  comp.dname = "compilations",
  ngsm.block = 50
)
}
\arguments{
\item{files.dpath}{Path to instance files directory.}

\item{comp.dname}{Name of compilations directory.}

\item{ngsm.block}{Number of GSM IDs per processed data block.}
}
\value{
NULL, generates an h5 rg database file as side effect.
}
\description{
Generates and HDF5 database of compiled red and green signals. Uses 
data tables previously generated using `get_rg_dtables` and `dtables_rg`.
This is called by the rules `get_h5db_rg` and `run_dnam_pipeline`.
}
