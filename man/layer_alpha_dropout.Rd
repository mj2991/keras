% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layers-noise.R
\name{layer_alpha_dropout}
\alias{layer_alpha_dropout}
\title{Applies Alpha Dropout to the input.}
\usage{
layer_alpha_dropout(object, rate, noise_shape = NULL, seed = NULL,
  input_shape = NULL, batch_input_shape = NULL, batch_size = NULL,
  dtype = NULL, name = NULL, trainable = NULL, weights = NULL)
}
\arguments{
\item{object}{Model or layer object}

\item{rate}{float, drop probability (as with \code{layer_dropout()}). The
multiplicative noise will have standard deviation \code{sqrt(rate / (1 - rate))}.}

\item{noise_shape}{Noise shape}

\item{seed}{An integer to use as random seed.}

\item{input_shape}{Dimensionality of the input (integer) not including the
samples axis. This argument is required when using this layer as the first
layer in a model.}

\item{batch_input_shape}{Shapes, including the batch size. For instance,
\code{batch_input_shape=c(10, 32)} indicates that the expected input will be
batches of 10 32-dimensional vectors. \code{batch_input_shape=list(NULL, 32)}
indicates batches of an arbitrary number of 32-dimensional vectors.}

\item{batch_size}{Fixed batch size for layer}

\item{dtype}{The data type expected by the input, as a string (\code{float32},
\code{float64}, \code{int32}...)}

\item{name}{An optional name string for the layer. Should be unique in a
model (do not reuse the same name twice). It will be autogenerated if it
isn't provided.}

\item{trainable}{Whether the layer weights will be updated during training.}

\item{weights}{Initial weights for layer.}
}
\description{
Alpha Dropout is a dropout that keeps mean and variance of inputs to their
original values, in order to ensure the self-normalizing property even after
this dropout.
}
\details{
Alpha Dropout fits well to Scaled Exponential Linear Units by randomly
setting activations to the negative saturation value.
}
\section{Input shape}{
 Arbitrary. Use the keyword argument \code{input_shape} (list
of integers, does not include the samples axis) when using this layer as
the first layer in a model.
}

\section{Output shape}{
 Same shape as input.
}

\section{References}{

\itemize{
\item \href{https://arxiv.org/abs/1706.02515}{Self-Normalizing Neural Networks}
}
}

\seealso{
Other noise layers: \code{\link{layer_gaussian_dropout}},
  \code{\link{layer_gaussian_noise}}
}
\concept{noise layers}
