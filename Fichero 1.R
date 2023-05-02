Ej1 <- function(){
  A <- c(3,4,5,9,2,9,6,4,4,5)
  for (i in 1: length(A)){
    
    print (A[i])
  }
  print(A[5])
  if(A[4]>A[8]){
    c <- A[4]
    A[4] <- A[8]
    A[8] <- c
    print(A)
  }
  for (i in 1: length(A)){
    if(A[i]> 9){
      A[i]<- 10
    }
    return(A)
  }
}
  



Ej1()

A <-  c(3,4,5,9,2,9,6,4,4,5)

for (i in 1: length(A)){
  if(A[i]> 9){
    A[i]<- 10
  }
  print(A)
  
  
  3 <- x
  