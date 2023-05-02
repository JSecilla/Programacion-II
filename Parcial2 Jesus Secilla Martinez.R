##
#Segundo Parcial
#Jesus Secilla Martínez
#Ejercicio 1


bingo <- function(){
  A <- matrix(c(3,6,8,15,19,2,
                1,5,2,4,6,7,
                5,11,14,7,17,3,
                7,17,18,11,6,14), nrow = 4, byrow = TRUE)
  jugar <- TRUE
  dimension <- nrow(A)*ncol(A)
  contador <- 0
  while(jugar == TRUE){
    filas <- 0
    columnas <- 0
    cat("introduzca un número entre 0 y 20")
    num <- scan(,,1)
    i <- 1
    while(i <= nrow(A)){
      j <- 1
      while(j <= ncol(A)){
        if(A[i,j]== num){
          A[i,j] = 0
          contador <- contador + 1
        }
       j <- j + 1 
      }
     i <- i + 1 
    }
    if(contador == dimension){
      jugar <- FALSE
      print("BINGOOO")
    }
    print(A)
    h <- 1
    while(h <= nrow(A)){
      if(sum(A[h,])== 0){
        filas <- filas + 1
        cat("fila", h, "\n")
      }
      h <- h + 1
    }
    p <- 1
    while(p <= ncol(A)){
      if(sum(A[,p])== 0){
        columnas <- columnas + 1
        cat("columna", p, "\n")
      }
      p <- p + 1
    }
    cat("Num. filas", filas, "\n")
    cat("Num. columnas", columnas, "\n")
  }
}



##
#Ejercicio 2

repe <- function(){
  A <- matrix(c(2,4,2,5,
                4,6,1,1,
                2,4,4,5), nrow = 3, byrow = TRUE)
  i <- 1
  h <- 1
  contadorfilas <- 0
  numfilas <- c()
  while(i <= nrow(A)){
    num <- A[i,h]
      for(j in h :ncol(A)){
        if((num == A[i,j])&&(h != j)){
          cat("Repes en Fila",i, "numeros", A[i,j], "\n")
          contadorfilas <- contadorfilas + 1
          numfilas <- c(numfilas, A[i,j])
        }
      }
    h <- h + 1
    if(h > ncol(A)){ 
      h <- 1
      i <- i + 1
    }
  }
  cat("Numeros repetidos por filas", contadorfilas, "que son", numfilas, "\n")
  
  
  i <- 1
  h <- 1
  contadorcolumnas <- 0
  numcolumna <- c()
  while(i <= ncol(A)){
    num <- A[h,i]
    for(j in h :nrow(A)){
      if((num == A[j,i])&&(h != j)){
        cat("Repes en columna",i, "numeros", A[j,i], "\n")
        contadorcolumnas <- contadorcolumnas + 1
        numcolumna <- c(numcolumna, A[j,i])
      }
    }
    h <- h + 1
    if(h > nrow(A)){ 
      h <- 1
      i <- i + 1
    }
  }
  contadortotal <- contadorfilas + contadorcolumnas
  numtotal <- c(numfilas,numcolumna)
  cat("Numeros repetidos por filas", contadorcolumnas, "que son", numcolumna, "\n")
  cat("Numeros repetidos en total", contadortotal , "que son", numtotal, "\n" )
  for(i in 1:(length(numtotal)-1)){
    j <- i + 1
    while(j <= length(numtotal)){
      if(numtotal[i]==numtotal[j]){
        numtotal <- numtotal[-j]
        j <- j -1
      }
      j <- j + 1
    }
  }
  cat("Diferentes son", length(numtotal), "que son", numtotal)
  }
   
  
##
#Ejercicio 3

problema3 <- function(){
  jugar <- TRUE
  A <- c(3, 11)
  contador <- 0
  while(jugar== TRUE){
    cat("Inserte un dato", "\n")
    num <- scan(,,1)
    j <- 1
    comprobar = TRUE
    while((j <= length(A))&(comprobar==TRUE)){
      if(A[j]==num){ 
        comprobar <- FALSE
      }
     j <- j + 1 
    }
    if(comprobar== TRUE){
      contador <- contador + 1
      introducir <- TRUE
      h <- 1
      colocar <- TRUE
      repeat{
        if(A[h] > num){
          A <- c(A[1:h-1],num,A[h:length(A)])
          colocar <- FALSE
        }else if((h==length(A))&(A[h]< num)){
          A <- c(A, num)
        }
        h <- h + 1
        if((h > length(A))||(colocar == FALSE)){
          break
        }
        }
    }
    print(A)
    if(contador == 5){
      jugar <- FALSE
    }
  }
  print(A)
  }
  
