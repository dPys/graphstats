% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bern_subgraph.R
\name{sg.bern.graph_estimator}
\alias{sg.bern.graph_estimator}
\title{A function to fit a bernoulli distribution to the edges of the matrices in a graph.}
\usage{
sg.bern.graph_estimator(samp, thresh = 0, smooth = TRUE)
}
\arguments{
\item{samp}{a list or array of graphs with arbitrary labelling.
 - if samp is a list, then it should have s elements of dimensions
     [n x n].
- if samp is an array, then it should be of dimensions [n x n x s].}

\item{thresh=0:}{is the threshold below which we set edges to disconnected, and above which we set edges to connected.}

\item{smooth=TRUE:}{whether to smooth p to avoid undesirable limits.}
}
\value{
p [n x n] the p parameter per edge representing the probability of an edge existing.
}
\description{
\code{sg.bern.graph_estimator} uses the method of moments to estimate the parameters of a beta
distribution, alpha and beta, for a collection of graphs.
}
\seealso{
\code{\link{sg.bern.estimator}}
}
