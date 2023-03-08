## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix(1:800, nrow=8, ncol=100)){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function () {x}
  Inverse_function <- function(inverse) {inv <<- inverse}
  Get_Inverse <- function () {inv}
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){
  inv <- x$Get_Inverse
  if (!is.null(inv)){
    message("Getting cache data")
    return(inv)
  }
  matt <- x$get()
  inv <- solve(mat, ...)
  x$Inverse_function(inv)
  inv
}
