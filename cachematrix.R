## Put comments here that give an overall description of what your
## functions do

## Description of function:
### This function caches the inverse of a matrix
### "makeCacheMatrix" function creates special "matrix" object that can cache
### its inverse
### "cacheSolve" function computes the inverse of the special "matrix"
### returned by makeCacheMatrix above. If the inverse has already been
### calculated then the cachecolve retrieve the inverse from the cache

## Write a short comment describing this function
## a. Set the value of a matrix 
## b. Get the value of a matrix 
## c. Set the inverse of the matrix 
## d. Get the inverse of the matrix 
 
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL 

	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(solve) inv <<- solve

	getinv <function() inv
	list(set = get, get = get, setinv = setinv, getinv = getinv) 
}


## Write a short comment describing this function
### This function calculates the inverse of a matrix created with the
### function above
### First checks to see if the inverse matrix has already been calculated
### If yes, it gets the inverse matrix  from the cache and skips the 
### calculation
### If no, it calculates the inverse of the matrix and sets the value 
### of the inverse matrix in the cache using the "setinv" function

## This function returns a matrix that is the inverse of "x" 

cacheSolve <- function(x, ...) {
	inv <- x$getinv()
	if(!is.null(inv)) {
		message("getting cache data")
		return(inv)
	}
	data <- x$get()
	inv <- solve(data, ...)
	x$setinv(inv)
	inv
}




