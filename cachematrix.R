## Put comments here that give an overall description of what your
## functions do
##makeCacheMatrix creates a special matrix object that can cache its inverse.
##cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

## Write a short comment describing this function
##makeCachematrix sets the value of vector gets the value of vector sets the value of inverse and gets the value of inverse


makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## cacheSolve makeCacheMatrix creates a special "matrix" object that can cache its inverse.
##If the inverse has already been calculated, then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i

        ## Return a matrix that is the inverse of 'x'
}
