#internal function

pow <- function(x,y, plot_it){
	res = x^y
	if(plot_it) print(ggplot2::qplot(x,res))
	return(res)
}
