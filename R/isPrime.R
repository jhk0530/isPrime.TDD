#' @title isPrime
#'
#' @description function to check whether input number is prime ot not
#'
#' @param x Integer value
#'
#' @examples isPrime(2) # TRUE
#'
#'

isPrime = function(x){
  if(!is.numeric(x)){
    stop('x must be numeric value', call. = FALSE)
  }
  if(x==2){return(TRUE)}
  for(i in 2:(x-1)){
    if(x%%i==0)return(FALSE)
  }
  return(TRUE)
}
