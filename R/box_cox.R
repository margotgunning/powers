#' Computes the box-cox transformation and its inverse
#'
#'
#'
#' @param response The value to be modified
#'
#' @param t_param The transfomration parameter
#'
#' @return The box-cox transormed value, or its inverse.
#'
#' @details
#' These functions aren't overly complicated: They aim to transform data for simplification purposes.
#'
#' The Box-Cox transformation and its inverse are logarithmic/power transformations, and are useful because they are relatively easy to interpret.
#'
#' The inverse_box_cox function essentially 'reverses' the Box-Cox transformation, in that it takes a transformed response, and reverts it back to its 'raw' state.
#'
#' These transformations depend on a paramater, called the transformation parameter.  Often you have to test multiple transformation parameters.
#'
#' They are conditional:
#' \itemize{
#'       \item if the transformation paramter is zero, the transformation is a log or exponential in nature,
#'       \item if the transformation parameter is not equal to zero, the response undergoes a power transformation.
#' }
#'
#' Overall:
#' \itemize{
#'      \item This \code{box_cox}, and \code{inverse_box_cox} functions are quite simple.
#'      \item There's nothing else to say about them.
#' }
#'
#' @examples
#' box_cox_transform(response=5, t_param=2)
#' inverse_box_cox_transform(response=12, t_param=2)
#'
#'
#' @rdname box_cox
#' @export
box_cox_transform <- function(response, t_param){
	if(t_param==0 & response <0){ return ("Cannot log transform response < 0, check inputs")}
	if(t_param==0){
		l = log(response)
		if(is.nan(l)==TRUE) return("Number not real, check input")
		else return(l)
	}
	if(t_param!=0){
		power = (((response^t_param)-1)/t_param)
		if(is.nan(power)==TRUE) return("Number not real, check input")
		else return(power)
	}
}

#' @rdname box_cox
#' @export
inverse_box_cox_transform <- function(response,t_param){
	if(t_param==0){
		exp_r = exp(response)
		if(is.nan(exp_r)==TRUE) return("Not a real number, check input")
		else return(exp_r)
	}
	if(t_param!=0){
		power = (((t_param*response) +1)^(1/t_param))
		if(is.nan(power)==TRUE) return("Not a real number, check input")
		else return(power)
	}

}
