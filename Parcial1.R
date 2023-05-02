##
#Parcial 1 otra clase
Decimal_a_binario <- function(){
  A <- 77
  binario <- c()
  duracion <- TRUE
  while(duracion==TRUE){
    resto <- A%%2
    binario <- c(resto, binario)
    A <- A%/%2
    if (A == 0){
      duracion <- FALSE
    }
  }
  print(binario)
}
Decimal_a_binario()

binario_a_decimal <- function(){
  A <- c(1,0,1,1)
  j = 0
  B <- 0
  for(i in length(A):1){
    B <- B + (A[i]*2^j)
    j = j+1
  }
  print(B)
}
binario_a_decimal()
