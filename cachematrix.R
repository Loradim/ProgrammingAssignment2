##
## Coursera Data Science - Course 2 - R Programming
## Programming Assignment 2
##
## Create a function that will calculate the inverse of a matrix if needed
## and caches the result as long as it is valid
##

## new "class" for storing a matrix and it's inverse
makeCacheMatrix <- function(x = matrix()) {
    
    ## initialize the inverse to "not present"
    inv <- NULL
    
    ## set a new matrix and declare and remove an existing inverse
    ## might be improved by checking if the new and old matrix are identical
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    ## return the stored matrix
    get <- function() {
        x
    }
    
    ## calculate the inverse if not existing yet and return inverse matrix in any case
    cacheSolve <- function() {
        if (is.null(inv)) {
            inv <<- solve(x)
        }
        inv
    }
    
    ## return the list of functions available for this object
    list(get = get, set = set, cacheSolve = cacheSolve)
}
