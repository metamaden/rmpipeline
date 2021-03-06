% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/md_dnam.R
\name{get_replicates}
\alias{get_replicates}
\title{Get likely sample replicates}
\usage{
get_replicates(
  ts,
  rg.fname,
  athresh = 0.1,
  md = NULL,
  md.dname = "metadata",
  comp.dname = "compilations",
  files.dname = "recount-methylation-files",
  verbose = TRUE
)
}
\arguments{
\item{ts}{Timestamp for the metadata output (integer or character).}

\item{athresh}{Similarity threshold for replicate identification (0.1).}

\item{md}{Preprocessed metadata, rsheet, or other table containing columns
"gsm" and "gse". If NULL, attempt to find mdpre at md.dname (NULL).}

\item{md.dname}{Name of metadata dir ("metadata"), contained at files.dname.}

\item{comp.dname}{Name of compilations dir ("compilations"), contained at 
files.dname.}

\item{files.dname}{Name of files dir for the instance 
("recount-methylation-files").}

\item{verbose}{Whether to show status messages (TRUE).}

\item{rgset}{An RGChannelSet object.}
}
\value{
NULL, stores a table of replicate information.
}
\description{
Use inferred genotypes to predict sample replicates by study. This function
uses the genotype prediction methods in the ewastools package to predict
likely sample replicates for each included study.
}
