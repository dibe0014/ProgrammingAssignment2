## Put comments here that give an overall description of what your
## functions do

## Creates a vector which contains the functions set, get, setinverse, getinverse
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Returns a matrix that is the inverse of X, it will use cache if the result has been cached
cacheSolve <- function(x, ...) {
  inv <-x$getinverse()
  if(!is.null(inv)){
    message("Returning cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setinverse(inv)
  inv
        
}
