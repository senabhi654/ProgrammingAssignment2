## Purpose: Cache the inverse of a matrix

# here we will create a function called makeCacheMatrix() as mentioned in the course
#the new function will be used to cache its inverse
# m will be used to store the inverse of the matrix 

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x <<- y
    m<<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) m<<- solveMatrix
  getInverse <- function() m
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


###we write a function to find the inverse of matrix

cacheSolve <- function(x, ...) {
  m<- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  #solve function is used to find inverse of the matrix
  m<- solve(data)
  x$setInverse(m)
  m 
        ## Return a matrix that is the inverse of 'x'
}
