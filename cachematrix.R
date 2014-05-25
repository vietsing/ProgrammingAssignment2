## This script create a pair of functions to 
## 1) create a special object to cache the inverse of a matrix and 
## 2) calculate or retrieve the inverse.
## Matrix needs to be square invertible

## Return a list of functions : set/get value of a matrix, set/get the inverse of the matrix 
makeCacheMatrix <- function(x = matrix()) {
        #instantiate im to store the inverse
        im <- NULL
        set <- function(y){
                 x <<- y
                 im <<- NULL
         } 
        get <- function() x
        setinverse <- function(inverse) im <<- inverse
        getinverse <- function() im
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Calculate the inverse, cache and print
cacheSolve <- function(x, ...) {
        im <- x$getinverse()
        ## if cache is not null, return cache
        if(!is.null(im)){
                message("getting cached data")
                return(im)
        }
        data <- x$get()
        im <- solve(data,...)
        x$setinverse(im)
        im
}

