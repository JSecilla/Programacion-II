ejercicio_2for <- function(){
  A <- matrix(c(3,3,4,6,4,8), nrow = 2, byrow = T)
  for( i in 1:nrow(A)){
    for(j in 1:ncol(A)){
      if(A[i,j]%%2 == (i+j)%%2){
        A[i,j] = 0
      }else{
        A[i,j] = -1
      }
    }
  }
  print(A)
}
ejercicio_2for()

ejercicio2while <- function(){
  A <- matrix(c(3,3,4,6,4,8), nrow = 2, byrow = T)
  i <- 1
  while(i <= nrow(A)){
    j <- 1
    while(j <= ncol(A)){
      
    if(A[i,j]%%2 == (i+j)%%2){
      A[i,j] = 0
    }else{
      A[i,j] = -1
    }
      j <- j+1
    } 
    i <- i+1
  }
  print(A)
}
ejercicio2while()

ejercicio2repeat <- function(){
  A <- matrix(c(3,3,4,6,4,8), nrow = 2, byrow = T)
  i <- 1
    repeat{
      j <- 1
      repeat{
      if(A[i,j]%%2 == (i+j)%%2){
        A[i,j] = 0
      }else{
        A[i,j] = -1
      }
        j <- j +1
        if(j > ncol(A)){
          break
        }
      }
      i <- i +1
      if(i > nrow(A)){
        break
      }
    }
  print(A)
}
ejercicio2repeat()