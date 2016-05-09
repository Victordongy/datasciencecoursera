## This function is for providing the matrix inversion given a matrix 
## which could be inversed supposedly.

## The first function is for caching the new matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
get<-function() x
setmatrix<-function(solve) m<<-solve
getmatrix<-function() m
list(set=set, get=get,
     setmatrix=setmatrix,
     getmatrix=getmatrix)
}




## The second one is for calculating the inversion of the matrix.

cacheSolve <- function(x, ...) {
        m<-x$getmatrix()
        if(!is.null(m)){
            message("getting cached data")
            return(m)
        }
        matrix<-x$get()
        m<-solve(matrix,...)
        x$setmatrix(m)
        m
}
