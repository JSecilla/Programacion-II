#Matrices y data frame
#matrix(data,nrow,ncol,byrow=True)
#Para añadir columnas <- cbind(matrix, columna)
#Para añadir filas <- rbind(matrix, fila)
#Dimnames <- list(nombre filas, nombre columnas)

traspuesta <- function(){
A <- matrix(c(6,14,13,3,9,5,7,1,21,32,5,2), nrow=4,ncol = 3, byrow = TRUE)
traspuesta <- matrix(0, nrow=3, ncol=4)
for(i in 1:nrow(A)){
  for(j in 1:ncol(A)){
    traspuesta[j,i] <- A[i,j]
  }
}
print(traspuesta)
}

ejercicio_2 <- function(){
  A  <- matrix(c(6,14,13,3,9,5,7,1,21), nrow=3,ncol = 3, byrow = TRUE)
  vector <- c()
  for (i in 1:nrow(A)) {
    for(j in 1:ncol(A)){
      if(i == j){
        vector <- c(vector,A[i,j])
        A[i,j] <- i
      }
    }
  }
  print(A)
  print(vector)
}
ejercicio_2()