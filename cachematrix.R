## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#makeCacheMatrix: This function creates a special "matrix" object that can cache
#its inverse.

makeCacheMatrix <- function(x = matrix()) {
  i = NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inv) i <<- inv
  getInverse <- function() i 
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if (!is.null(i)){
      i
    }
  else {
    i <- solve(x$get())
    x$setInverse(i)
  }
}
