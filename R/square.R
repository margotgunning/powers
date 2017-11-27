#' Raise a vector to a power
#'
#' That's it -- this function just computes a power of a vector.
#'
#' @param x The vector to be modified
#'
#' @return A vector rasied to a selected power \code{x}.
#'
#' @details
#' This function isn't complicated.
#'
#' And it almost certainly doesn't need two paragraphs in the "Details"
#' section!
#'
#' Here are some reasons why putting a list in this section is excessive:
#' \itemize{
#'      \item This \code{square}, and \code{cube} functions are quite simple.
#'      \item There's nothing else to say about \code{square} and \code{cube}.
#' }
#'
#' @examples
#' square(1:10)
#' square(-5)
#' cube(3)
#' cube(-9)
#' @export
square <- function(x, plot_it=FALSE){
	pow(x, y=2, plot_it=plot_it)
}

#' @rdname square
#' @export
cube <- function(x, plot_it=FALSE){
	pow(x,y=3,plot_it=plot_it)


}


