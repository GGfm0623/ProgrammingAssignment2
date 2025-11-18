## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD

=======
  inv <- NULL  # cache for inverse
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  get <- function() {
    x
  }
  
  setinverse <- function(inverse_matrix) {
    inv <<- inverse_matrix
  }
  
  getinverse <- function() {
    inv
  }
  
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
>>>>>>> bf2c432 (Implement caching matrix inverse functions)
}


## Write a short comment describing this function
<<<<<<< HEAD

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
=======
## makeCacheMatrix creates a special matrix object that can store (cache) its inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getinverse()
  
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setinverse(inv)
  inv
>>>>>>> bf2c432 (Implement caching matrix inverse functions)
}
