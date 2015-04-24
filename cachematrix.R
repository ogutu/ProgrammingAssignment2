## Put comments here that give an overall description of what your
## functions do
# 1. function sets the value of a matrix
# 2. reads in the value of the matrix
# 3. sets the value of the inverse of a matrix
# 4. gets and stores the inverse in a cache
# 5. returns the value from the cache if the inverse is already stored
# 6. otherwise it determines the inverse of the new matrix and displays 

## function creates a special "matrix"object that can cache it inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function()x
setmatInv <- function(solve) inv <<- solve
getmatInv <- function() inv
list(set=set, get=get, setmatInv = setmatInv, getmatInv = getmatInv)
}


## the function computes the inverse of the special "matrix"returned by the makeCacheMatrix above
## if the inverse is already calculated  (and the matrix has not changed), the the function should 
## retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
inv <- x$getmatInv()
if(!is.null(inv)) {
message("getting cached data")
## Return a matrix that is the inverse of 'x'
#return (inv)
}
DMatrix <- x$get()
inv <- solve(DMatrix)
## Return a matrix that is the inverse of 'x'
x$setmatInv(inv)
inv

}
