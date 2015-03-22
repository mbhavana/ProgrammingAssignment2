
# This function creates a matrix. Retrieve the matrix and sets the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  # Initializing the matrix variable to Null value
  m<-NULL 
  
  set<-function(y){
    x<<-y     # setting the value of X to Y which is passed argument of this function.
    
    m<<-NULL  # Assigning m to Null value for makeCacheMAtrix environment
  }
  get<-function() x  # create function get in makeCacheMatrix environment and assigning a vector
  setmatrix<-function(solve) m<<- solve  # takes the valye of solve and assigns it to m
  getmatrix<-function() m  # Returns the value of m in makeCacheMatrix
  list(set=set, get=get,    # creates a list of values of functions in makeCacheMatrix
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


# This function creates inverse of a matrix. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){     # condition to check the value of m whether null or not.
    message("getting cached data")  # message gets printed if the value of m is not null
    return(m)           
  }
  matrix<-x$get()       # gets the value of matrix from makeCacheMatrix and assigns it to matrix
  m<-solve(matrix, ...)  # gets the inverse of matrix
  x$setmatrix(m)    # sets the matrix value to the new value
  m    #returns the inverse of matrix
}
