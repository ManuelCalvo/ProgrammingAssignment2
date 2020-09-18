## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) {
   
#This function gets the inverse of a matrix and keeps it in the cache
#For that, it creates and object that caches it
   
#Creates an object to cache the result:
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

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
   
#This function calculates the inverse of a matrix. But,
   #if it has already been calculated with the function from above,
   #it just gets the result of the cache and outputs it.
      m <- x$getsolve()
      if(!is.null(m)) {
         
         #If the matrix has already been inversed:
         
            message("getting cached data")
            return(m) #it returns the cache
      }
      
      #Now, if it has not been inversed, it calculates it:
      data <- x$get()
      m <- solve(data, ...)
      x$setsolve(m)
      m        
}
