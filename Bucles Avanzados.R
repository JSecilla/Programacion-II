Pedir_numero <- function(){
  A <- c(3,4,6,7)
  num <- scan(,,1)
  contador <- 0
  for (i in 1:length(A)) {
    if(num == A[i]){
      contador <- contador+1
    }
  }
  if(contador!=0){
    cat(num,"Está en el vector")
  }else{
    cat(num,"No está en el vector")
  }
}
Pedir_numero()

Elementos_coincidentes <- function(){
  A <- c(1,3,5,7,9)
  B <- c(2,3,5,7,9,11,12,13)
  contador <- 0
  i <- 1
  j <- 1
  for(i in 1:length(A)){
    for(j in 1:length(B)){
      if(A[i]==B[j]){
        contador <- contador +1
        cat(A[i],"\n")
      }
    }
  }
  cat("Coinciden",contador,"números")
}
Elementos_coincidentes()


Vectores_contrarios <- function(){
  A <- c(1,4,3,4)
  B <- c(4,3,2,1)
  i <- 1
  j <- length(B)
  contador <- 0
  for (i in 1:length(A)){
    if(A[i]==B[j]){
      contador <- contador +1
    }
    j <- j-1
  }
  if(contador==length(A)){
    cat("Son iguales")
  }else{
    cat("No son iguales")
  }
}
Vectores_contrarios()

vector_capicua <- function(){
  A <- c(2,3,3,2)
  v1 <- c()
  v2 <- c()
  for(i in 1:(length(A)-(length(A)%/%2))){
    v1 <- c(v1,A[i])
  }
  for(i in ((length(A)%/%2)+1):length(A)){
    v2 <- c(A[i],v2)
  } 
 
 
  contador <- 0
  for(i in 1:length(v1)){
    if(v1[i]==v2[i]){
      contador <- contador + 1
    }
  }
  if(contador==length(v1)){
    cat("El vector", A, "es capicua")
  }else{
    cat("El vector", A, "no es capicua")
  }
}
vector_capicua()