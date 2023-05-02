Problema1A <- function(){
  A <- c(5,8,9,21,34,56,89)
  for(i in 3:length(A)){
    if(A[i]== A[i-2]+A[i-1]){
    A[i] <- A[i]
    }else{
      A[i] <- A[i-1]+A[i-2]
    }
  }
  print(A)
}
Problema1A()
Problema1A <- function(){
  A <- c(5,8,9,21,34,56,89)
  seguir=TRUE
  j = 3
  while((j <= length(A))&){
    
  }
}

Problema1B <- function(){
  A <- c(0,1,1,2,3,5,9)
  contador <- 2
  seguir <- TRUE
  j <- 3
  while(j <= length(A) & seguir==TRUE){
    if(A[j]!=(A[j-1]+A[j-2])){
      seguir <-  FALSE
    }else{
      contador <- contador + 1
    }
    j <- j +1
  }
  if(seguir == TRUE){
    cat("Sigue la Fibonacci", "\n")
    cat("Siguen la serie", contador, "elementos")
  }else{
    cat("No sigue Fibonacci","\n")
    cat("Siguen la serie", contador, "elementos")
  }
}
Problema1B()

Problema2 <- function(A){
  divisible <- c(1)
  if(length(A)==1){
    cuarto <- A[length(A)]
  }else{
  cuarto <- (A[length(A)-1]*10) + A[length(A)]
  }
  j <- 1
  septimo <- 0
  if(length(A)==1){
    septimo <- A[length(A)]
  }else{
  for(i in (length(A)-1): 1){
    
    septimo <- septimo + A[i]*j
    j <- j*10
  }
  septimo <- septimo - (A[length(A)]*2)
  }
  octavo <- 0
  h <- 1
  if(length(A)>=3){
    for(i in length(A):(length(A)-2)){
      octavo <- octavo + A[i]*h
      h <- h*10
    }
  }else{
    for(j in length(A): 1){
      octavo <- octavo + A[j]*h
      h <- h*10
    }
  }
  if(A[length(A)]== 0 || A[length(A)]%%2 == 0){
    divisible <- c(divisible, 2)
  }
   if (sum(A)%%3 == 0){
    divisible <- c(divisible, 3)
  }
   if(cuarto%%4 == 0){
    divisible <- c(divisible, 4)
  }
   if(A[length(A)]== 0 || A[length(A)] == 5){
    divisible <- c(divisible, 5)
  }
   if(A[length(A)]%%2 == 0 & sum(A)%%3 == 0){
    divisible <- c(divisible, 6)
  }
   if(septimo%%7==0){
    divisible <- c(divisible, 7)
  }
   if(octavo%%8 == 0){
    divisible <- c(divisible, 8)
  }
   if(sum(A)%%9 == 0){
    divisible <- c(divisible, 9)
  }
   if(A[length(A)]== 0){
    divisible <- c(divisible, 10)
  }
   cat("Es divisible por", divisible)
  }

Problema2(c(0))
