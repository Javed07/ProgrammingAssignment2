## Program for creating inverse of a matrix and caching it
## makeCacheMatrix function reads a matrix and creates it's inverse
## setmatrix takes the value of matrix
## getmatrix returns the matrix
## setmatrixinverse takes the matrix and inverse it
## getmatrixinverse returns the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  z <- solve(x)
  m <<- NULL
  setmatrix <- function(y) {
    x <<- y
    m <<- NULL
  }
  getmatrix <- function() x 
  setmatrixinverse <- function(matrix) m <<- z        
  getmatrixinverse <- function() m
  list(setmatrix = setmatrix, getmatrix = getmatrix, setmatrixinverse = setmatrixinverse,
       getmatrixinverse = getmatrixinverse)
  }


## cacheSolve function checks whether inverse of the matrix has been calculated or not. 
## If cacheSolve function finds the inverse, it returns it from the caches.
## If it does not find the invers the it calculates and returns it back.

cacheSolve <- function(x, ...) {
  m <- x$getmatrixinverse()
  if(!is.null(m)) {
  message("getting cached inverse of matrix")
  return(m)
  }
  read <- x$getmatrix()
  m <- matrix(read)
  x$setmatrixinverse(m)
  x$getmatrixinverse()        
}
