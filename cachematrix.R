## these functions utilize lexical scoping to illustrate how to cache time consuming operations


## given any matrix, cache it

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
  		x<<-y
  		m<<-NULL
   	}
	get<-function() x
	setmatrix<-function(solve) 
	m<<-solve
	getmatrix<-function() m 
	list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}

## check if it's a new matrix and the inverse is already created if not calculate and return the inverse, else return the cached inverse matrix

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
