% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nonpar.R
\name{nonpar}
\alias{nonpar}
\title{Nonparametric two-sample testing using kernel-based test statistic}
\usage{
nonpar(G1, G2, dim = NULL, sigma = NULL, alpha = 0.05,
  bootstrap_sample = 200, printResult = FALSE)
}
\arguments{
\item{G1}{an igraph object}

\item{G2}{an igraph object}

\item{dim}{dimension of the latent position that graphs are embeded into, defaulted to
the maximum of two number of dimensions selected on two graphs by dimselect.R}

\item{sigma}{bandwidth of the rbf kernel for computing test statistic}

\item{alpha}{Significance level of hypothesis testing}

\item{bootstrap_sample}{Number of bootstrap samples when performing hypothesis tesing}

\item{printResult}{logical indicating if output the result of hypothesis testing is to be printed}
}
\value{
\code{T} A scalar value \eqn{T} such that \eqn{T} is near 0 if the rows of
\eqn{X} and \eqn{Y} are from the same distribution and \eqn{T} far from 0 if the rows of
\eqn{X} and \eqn{Y} are from different distribution.
}
\description{
This is a simple implementation of the kernel-based test statistic for the nonparametric
two-sample testing problem of given \eqn{X_1, X_2, \dots, X_n} i.i.d. \eqn{F} and
\eqn{Y_1, Y_2, \dots, Y_m} i.i.d. \eqn{G}, test the null hypothesis of \eqn{F = G} against
the alternative hypothesis of \eqn{F \not = G}. The test statistic is based on embedding
\eqn{F} and \eqn{G} into a reproducing kernel Hilbert space and then compute a distance between
the resulting embeddings. For this primitive, the Hilbert space is associated with the
Gaussian kernel.
}
\references{
Tang, M., Athreya, A., Sussman, D.L., Lyzinski, V., Priebe, C.E.
A nonparametric two-sample hypothesis testing problem for random graphs
}
\author{
Youngser Park <youngser@jhu.edu>, Kemeng Zhang <kzhang@jhu.edu>.
}
