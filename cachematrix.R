## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

<<<<<<< HEAD

=======
>>>>>>> 4dce4e53e5edebf6e13e115ab9478bff9ec481b5
makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setsolve <- function(solve) m <<- solve
      getsolve <- function() m
      list(set = set, get = get,
           setsolve = setsolve,
           getsolve = getsolve)
}

## Write a short comment describing this function


        ## Return a matrix that is the inverse of 'x'
<<<<<<< HEAD

cacheSolve <- function(x, ...) {
=======
>>>>>>> 4dce4e53e5edebf6e13e115ab9478bff9ec481b5
      m <- x$getsolve()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setsolve(m)
<<<<<<< HEAD
      m
=======
      m        
>>>>>>> 4dce4e53e5edebf6e13e115ab9478bff9ec481b5
}
