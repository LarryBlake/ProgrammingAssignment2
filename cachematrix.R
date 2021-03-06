## R Assignment 2
## Pair of functions to:
##    1. Save a matrix / inversion pair for future retrieval
##    2. Return the inversion of a matrix, using saved calculations if possible


## Write the matrix / inversion pair for future

makeCacheMatrix <- function(x = matrix()) {
	m <- solve(x)
	
	return(m)
}


## Does cached solution exist?  Return it.  Otherwise invert the matrix and save.

cacheSolve <- function(x, ...) {

	## look for cached
	m <- x$getsolve
	if (!is.null(m)) {
		message("found in cache")
		return(m)
	}

	## Not there.  Invert, save, return.
	makeCacheMatrix(x)
}
