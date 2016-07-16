## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getmatrixinverse()
  if(!is.null(m)) {
  message("getting cached inverse of matrix")
  return(m)
  }
  read <- x$getmatrix()
  m <- matrix(read)
  x$setmatrixinverse(m)
  x$getmatrixinverse()        ## Return a matrix that is the inverse of 'x'
}
