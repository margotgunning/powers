% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/box_cox.R
\name{box_cox_transform}
\alias{box_cox_transform}
\alias{inverse_box_cox_transform}
\title{Computes the box-cox transformation and its inverse}
\usage{
box_cox_transform(response, t_param)

inverse_box_cox_transform(response, t_param)
}
\arguments{
\item{response}{The value to be modified}

\item{t_param}{The transfomration parameter}
}
\value{
The box-cox transormed value, or its inverse.
}
\description{
Computes the box-cox transformation and its inverse
}
\details{
These functions aren't overly complicated: They aim to transform data for simplification purposes.

The Box-Cox transformation and its inverse are logarithmic/power transformations, and are useful because they are relatively easy to interpret.

The inverse_box_cox function essentially 'reverses' the Box-Cox transformation, in that it takes a transformed response, and reverts it back to its 'raw' state.

These transformations depend on a paramater, called the transformation parameter.  Often you have to test multiple transformation parameters.

They are conditional:
\itemize{
      \item if the transformation paramter is zero, the transformation is a log or exponential in nature,
      \item if the transformation parameter is not equal to zero, the response undergoes a power transformation.
}

Overall:
\itemize{
     \item This \code{box_cox}, and \code{inverse_box_cox} functions are quite simple.
     \item There's nothing else to say about them.
}
}
\examples{
box_cox_transform(response=5, t_param=2)
inverse_box_cox_transform(response=12, t_param=2)


}
