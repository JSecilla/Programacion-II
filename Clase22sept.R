Ejercicio_1 <- function(){
  A <- c(2,1,4,3,5) 
  i <- 1
  while(i <= length(A)){
    print(A[i])
    i <- i +1
  }
}
Ejercicio_1()

Ejercicio_3 <- function(){
  A <- c(2,1,4,3,5,2,4,3,1,4,2,2,3)
  print("porfavor inserte un numero")
  num <- scan(,,1)
  cont <- 0
  for (i in 1:length(A)) {
    if(num == A[i]){
      cont <- cont + 1
    }
  } 
}

Ejercicio_3while <- function(){
  A <- c(2,1,4,3,5,2,4,3,1,4,2,2,3)
  print("Porfavor inserte un numero")
  num <- scan(,,1)
  i <- 1
  contador <- 0
  while(i <= length(A)){
    if(num==A[i]){
      contador <- contador + 1
    }
    i <- i +1
  }
  cat("Su numero se repite", contador, "veces")
}
Ejercicio_3while()


Ejercicio_3Repeat()Ejercicio_3Repeat <- function(){
  A <- c(2,1,4,3,5,2,4,3,1,4,2,2,3)
  print("Porfavor inserte un numero")
  num <- scan(,,1)
  i <- 1
  contador <- 0
  repeat{
    if(i > length(A)){
      break
    }
    if(num==A[i]){
      contador <- contador + 1
    }
    i <- i+1
  }
  cat("Su numero se repite", contador, "veces")
}
Ejercicio_3Repeat()

Ejercicio_8clasificar_vector <- function(){
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

Ejercicio_5 <- function(){
  A <- c(4,"Si",8,"No",6,"Si",8,"Si",3,"No")
  i <- 1
  notas <- c()
  erasmus <-c()
  for(i in 1:length(A)){
    if(i%%2 == 0){
      erasmus <- c(erasmus, A[i])
    }else{
      notas <- c(notas, A[i])
    }
  }
  notas <- as.numeric(notas)
  alumnos_erasmus <- 0
  for(i in 1:length(erasmus)){
    if(erasmus[i]=="Si"){
      alumnos_erasmus <- alumnos_erasmus + 1 
    }
  }
  cat("Apartado A:","Hay", alumnos_erasmus,"alumnos de Erasmus","\n")
  aprobados_erasmus <- 0
  aprobados_totales <- 0
  
  for(i in 1:length(notas)){
    if(notas[i]>=5 & erasmus[i]== "Si"){
      aprobados_erasmus <- aprobados_erasmus + 1
    }
    if(notas[i]>=5){
      aprobados_totales <- aprobados_totales + 1
    }
  }
  suspensos_erasmus <- alumnos_erasmus - aprobados_erasmus
  cat("Apartado B.1:", "En lo que a Erasmus se refiere, hay", aprobados_erasmus, "aprobados y", suspensos_erasmus,"suspensos", "\n")
  cat("Apartado B.2:", "En total hay", aprobados_totales, "aprobados y", length(erasmus)-aprobados_totales,"suspensos", "\n")
  for(i in 1:length(erasmus)){
    if(erasmus[i]== "Si"){
      notas[i] <- notas[i]+1
    }
  }
  cat("Apartado C: Si sumamos un punto a los alumnos de eramus las notas quedarian así", notas, "\n")
  aprobados_erasmus <- 0
  aprobados_totales <- 0
  
  for(i in 1:length(notas)){
    if(notas[i]>=5 & erasmus[i]== "Si"){
      aprobados_erasmus <- aprobados_erasmus + 1
    }
    if(notas[i]>=5){
      aprobados_totales <- aprobados_totales + 1
    }
  }
  suspensos_erasmus <- alumnos_erasmus - aprobados_erasmus
  cat("Apartado D.1:En lo que a Erasmus se refiere, hay", aprobados_erasmus, "aprobados y", suspensos_erasmus,"suspensos", "\n")
  cat("Apartado D.2:En total hay", aprobados_totales, "aprobados y", length(erasmus)-aprobados_totales,"suspensos", "\n")
}


