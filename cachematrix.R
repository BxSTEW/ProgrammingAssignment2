## The first function caches the matrix while the second caches the inverse of the original matix

#THe following function accomplishes:
# set the value of the matrix

# get the value of the matrix

# set the value of the inverse

# get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
       get <- function() x
       setinverse <- function(inverse) i <<- inverse
       getinverse <- function() i
       list(set = set,
            get = get,
            setinverse = setinverse,
            getinverse = getinverse)

}


## This function takes the matrix made from the above function, then finds and caches the inverse of it.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
