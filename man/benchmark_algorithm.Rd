% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Benchmarking.R
\name{benchmark_algorithm}
\alias{benchmark_algorithm}
\title{Base procedure for benchmarking a custom algorithm}
\usage{
benchmark_algorithm(user_alg, suite = "PBO", functions = c(1, 2),
  instances = c(1, 2), dimensions = 16, data.dir = NULL,
  algorithm.info = " ", algorithm.name = " ", params.track = NULL,
  repetitions = 5)
}
\arguments{
\item{user_alg}{Function defining the custom algorithm. Needs to accept one paramter:
an IOHproblem object, which has the following properties:
\itemize{
\item dimension
\item function_id
\item instance
\item suite (Currently 'BBOB' or 'PBO')
}
And the following functions:
\itemize{
\item obj_func
\item target_hit
\item set_parameters
}}

\item{suite}{Which suite to test on}

\item{functions}{Which function to test on}

\item{instances}{Which instances to test on}

\item{dimensions}{Which dimensions to test on}

\item{data.dir}{Where the data should be stored (defaults to "./data" when not provided)}

\item{algorithm.info}{Additional information about the algorithm you plan on running}

\item{algorithm.name}{The name of the algorithm you plan on running}

\item{params.track}{Which parameters to track. Should be a vector of strings, containing no spaces or commas}

\item{repetitions}{How many independent runs of the algorithm to do for each problem instance}
}
\description{
Base procedure for benchmarking a custom algorithm
}
\examples{
\donttest{

benchmark_algorithm(IOH_two_rate_GA, params.track = 'Mutation_rate', data.dir = './data')
}
}
