% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transforms.R
\name{gs.xfm.apply_model}
\alias{gs.xfm.apply_model}
\title{Apply Graph Model}
\usage{
gs.xfm.apply_model(graphs, func, model.opts = list(), ...)
}
\arguments{
\item{graphs}{the set of \code{n} graphs with \code{v} vertices. Can be either:
\itemize{
\item{\code{[[n]][v, v]}}{a list of \code{n} graphs with \code{v} vertices.}
\item{\code{[n, v, v]}}{an array of \code{n} graphs with \code{v} vertices.}
}}

\item{model.opts}{the hyper-parameter options to pass to your model as a keyworded list. Defaults to \code{list()}, or no hyper-parameters.}

\item{...}{trailing args.}

\item{model.func}{the model function to apply to each of the n graphs. Should take as its first argument a \code{[v, v]} graph adjacency matrix, and return a model object.}
}
\value{
models \code{[[n]]} list where \code{models[[i]]} corresponds to the model \code{model.func} applied to \code{graphs[[i]]}.
}
\description{
A function to streamline applying a model over a set of graphs.
}
\author{
Eric Bridgeford
}
