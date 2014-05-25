## Put comments here that give an overall description of what your
## functions do

## Create a list of functions: set,get,setinverse, getinverse.
makeCacheMatrix <- function(x = matrix()) {
        #instantiate object im to store the inverse of matrix x
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


## Cache the inverse of matrix x

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        im <- x$getinverse()
        if(!is.null(im)){
                message("getting cached data")
                return(im)
        }
        data <- x$get()
        im <- solve(data,...)
        x$setinverse(im)
        im
}

