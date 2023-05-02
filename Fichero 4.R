
A <- c(3,4,5,9,2,9,6,4,4,5)
B <- c()
j <- 1
for (i in 6: length(A)) {
  B[j] <- A[i]
  j <- j+1
}
print(B)


D <- c(3,4,5,9,2,9,6,4,4,5)
cat("Elementos mayores que 5", D[D>5], "\n", "hola")
D[6] <- 8

ej3 <- function(){
  A <- c(2,1,4,3,5,2,4,3,1,4,2,2,3)
  print("porfavor inserte un numero")
  num <- scan(,,1)
  cont <- 0
  for (i in 1:length(A)) {
    if(num == A[i]){
      cont <- cont + 1
    }
    
  }
  cat("Su número se repite", cont, "veces")
}
ej3()

Nota <- function(){
  
   cal <- scan(,,1)
   if (cal >= 5){
    print("Aprobado")
   }else{
     print("Suspenso")
   }
  }
Nota()

clasificar_vector <- function(){
  A <- c(2,4,5,7)
  Pares <- c()
  Impares <- c()
  for (i in 1: length(A)) {
    if(A[i]%%2 == 0){
      Pares <- c(Pares, A[i])
    } else {
      Impares <- c(Impares, A[i])
    }
  }
  print(Pares)
  print(Impares)
}
clasificar_vector()

