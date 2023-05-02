Ejercicio1_A <- function(){
  A <- c(2,5,4,6)
  cat("Porfavor introduza un número entre 1 y 10")
 num <- scan(,,1)
 while(num < 1 || num > 10){
   cat("Su número no está entre 1 y 10, porfavor vuelva a introducirlo")
   num <- scan(,,1)
 }
 for (i in 1:length(A)){
   if(A[i]==num){
     A[i] <- -1
   }
 }
 cat(A)
}
Ejercicio1_A()

Ejercicio1_B <- function(){
  A <- c(2,5,4,6)
  contador <- 0
  cat("Porfavor introduza", length(A), "números entre 1 y 10")
  num <- scan(,,length(A))
  for(j in 1:length(A)){
   while(num[j] < 1 || num[j] > 10){
    cat("Su conjunto no está correcto ya que algun valoe no está entre 1 y 10, porfavor vuelva a introducirlo")
    num <- scan(,,length(A))
  }
  }
  for(h in 1:length(A)){
   for (i in 1:length(A)){
    if(A[i]==num[h]){
      A[i] <- -1
      contador <- contador + 1
    }
  }
  }
  cat(A, "\n")
  cat("Había", contador, "numeros en el vector")
}
Ejercicio1_B()

numprimos <- function(){
  prim <- c(2,3,5,7,11,13,17,19,23,29,31,37,41,43,47)
  A <- c(2,4,3,8,12,23)
  recorrido <- 1
  for (i in 1:length(A)){
    j <- 1
    contador <- TRUE
    while(j<=length(prim) && contador == TRUE){
      if (A[i]==prim[j]){
        contador <- FALSE
      }
      j <- j+1
    }
    if (contador == TRUE){
      A[i] <- prim[recorrido]
      recorrido <- recorrido + 1
    }
  }
  cat(A)
}
numprimos()