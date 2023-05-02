################################################################################
# PARCIAL PROGRAMACION 

ahorcado <- function(){
  cat("jugador 1: Piense en una palabra","\n","Diga número de letras de su palabra")
  letras <- scan(,,1)
  palabras <- c()
  for(i in 1:letras){
    A <- readline("diga una letra:")
    palabras <- c(palabras,A)
  }
  vidas <- letras*2
  cat("Su palabra es",palabras)
  cat("Empieza jugador 2","\n","la palabra es de", letras, "letras","\n","Cuenta con",vidas, "vidas","\n","Empiece a decir letras")
  aciertos <- 0
  jugar <- TRUE
  while(jugar == TRUE){
    cat("Numero de vidas",vidas, "\n")
    cat(palabras)
    x <- readline("diga una letra:")
    fallos <- 0
    for(i in 1:length(palabras)){
     if(x == palabras[i]){
       palabras[i] <- "*"
       aciertos <- aciertos + 1
     }else{
       fallos <- fallos + 1
     }
    }
   if(fallos == length(palabras)){
     vidas <- vidas - 1
   }
   if(vidas == 0){
     jugar <- FALSE
     print("AHORCADO")
   }else if(aciertos == length(palabras)){
     jugar <- FALSE
     print("Ha ganado")
   }
  }
}


Ejercicio2 <- function(){
  A <- matrix(data = c(1,5,3,1,2,1,4,2,3,1,2,3,4,2,6,4),nrow = 4,ncol = 4,byrow = TRUE)
  X <- c(1,1,3,4)
  i <- 1
  comprobacion <- c()
  while(i <= length(X)){
    if(A[i,i] == X[i]){
      comprobacion <- c(comprobacion,X[i])
      X[i] <- "*"
      i <- i + 1
    }else{
      i <- i + 1
    }
  }
  print(A)
  print(X)
  length(unique(comprobacion))
}

Ejercicio3 <- function(){
  X <- c(1,4,1,10,2,8)
  global <- 0
  filas <- c()
  numeros <- c()
  A <- matrix(data = c(10,6,13,2,3,6,2,4,6,1,1,5),nrow = 2,ncol = 6,byrow = TRUE)
  Comprobaciones <- length(X)/2
  i <- 1
 while(i <= length(X)){
   filas <- c(filas,X[i])
   i <- i + 2
 }
  j <- 2
  while(j <= length(X)){
    numeros <- c(numeros,X[j])
    j <- j + 2
  }
  for(i in 1:length(filas)){
    contador <- 0
    for(j in 1:length(A[filas[i],])){
      if(A[filas[i],j] <= numeros[i]){
        contador <- contador + 1
      }
    }
  global <- global + contador
  cat("En la fila", filas[i] , "hay ", contador , "menores que", numeros[i],"\n")
  }
  cat("En total hay",global)
}

