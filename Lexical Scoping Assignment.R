#The makeCacheMatrix...
makeCacheMatrix <- function(x = numeric){
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

#Now the actual function to return the inverse

cacheSolve <- function(x, ...){
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