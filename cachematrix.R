
# This function creates a matrix. Retrieve the matrix and sets the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  # Initializing the matrix variable to Null value
  m<-NULL 
  
  set<-function(y){
    x<<-y     # setting the value of X to Y
    
    m<<-NULL  # Assigning m to Null value for makeCacheMAtrix environment
  }
  get<-function() x  # create function get in makeCacheMatrix environment and assigning a vector
  setmatrix<-function(solve) m<<- solve  # takes the valye of solve and assigns it to m
  getmatrix<-function() m  # Returns the value of m in makeCacheMatrix
  list(set=set, get=get,    # creates a list of values of functions in makeCacheMatrix
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
