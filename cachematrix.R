## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##create a special matrix
makeCacheMatrix <- function(m = matrix()) {
        i <- NULL
##setting the matrix
        set <- function(matrix){
                m <<- matrix
                i <<- NULL
        }
##getting the matrix
         get <- function(){
                m       
         }
##setting the inverse of the matrix
         
         setInverse <- function(inverse){
                 i <<- inverse
         }
##getting the inverse of the matrix
         getInverse <- function(){
                 i
         }
##returning the list of methods described earlier
         list(set = set, get = get,
              setInverse = setTnverse,
              getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(m, ...) {
## Return a matrix that is the inverse of 'm'
        i <- m$getInverse()
##Returning the inverse matrix that was set
        
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
##geting the matrix from the object
        data <-m$get()
##calculate the inverse matrix multiplication
        i <-solve(data) %% data
## setting the inverse of the object
        m$setInverse(i)
##returning the matrix
        i
}
