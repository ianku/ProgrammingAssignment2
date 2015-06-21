## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function caches the invertible matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinversematrix <- function(inversematrix) m <<- inversematrix
  getinversematrix <- function() m
  list(set = set, get = get,
       setinversematrix = setinversematrix,
       getinversematrix = getinversematrix)
}


## Write a short comment describing this function

## This function calculate the inverse of matrix returned by 
## makeCacheMatrix. This function will retrive the inverse from
## the cache if and only if the inverse has been calculated and the
## matrix has not changed.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinversematrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinversematrix(m)
  m
}
