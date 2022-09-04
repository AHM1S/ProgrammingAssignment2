## Put comments here that give an overall description of what your
## functions do
##Both functions combined calculate the inverse of a matrix and caches it .


## Write a short comment describing this function
## This function is meant to create a list of functions that :
## 1- set the value of the matrix  
## 2- get the value of the matrix
## 3- set the value of the inverse of the matrix
## 4- get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## Write a short comment describing this function
## This function is meant to use the output of the previous function and do 2 things:
## 1- check if the inverse of the matrix is previously calculated
## 2- calculate the inverse of the matrix if it was not previously calculated

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
