## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates the cahcee "Matrix" to be used

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x <- y 
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inversed) i <<- inversed
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function
#This is where the inverse is solved for if not found in the cahce

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if (!is.null(i)){
        message("Getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
