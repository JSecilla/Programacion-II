##
#Ejercicio 6 Matrices
ejercicio6 <- function(){
  escritos <- 1
  A <- matrix(c(6,14,13,
                3,9,5,
                7,1,20), nrow = 3, byrow = T)
  completa == TRUE
  while(completa==TRUE){
  print("Escriba numeros entre 0 y 20")
  num = scan(,,1)
  parada = TRUE
  contador = 1
  while((contandor <= length(escritos))$(parada == TRUE)){
    if(num == escritos[contador]){
      parada == FALSE
      print("Esta numero ya ha sido probado")
    }
    contador = contador + 1
  }
  while ((num<0)||(num>20)){
    print("Fuera de rango, introduzca entre 0 y 20")
    escritos = c(escritos, num)
    num = scan(,,1)
  }
  if(parada==TRUE){
    escritos <- c(escritos, num)
    for(i in 1:nrow(A)){
      for(j in 1:ncol(A)){
        if( A[i,j]== num){
          A[i,j]= "*"
        }
      }
    }
  }
    i <- 1
    stop <- TRUE
    while((i <= nrow(A))&(stop==TRUE)){
      j= 1
      while((j<=ncol(A))& (stop==TRUE)){
        if(A[i,j]=="*"){
          j = j+1
        } else{
          stop= FALSE
        }
      }
      i <- i +1
    }
  
  if(stop== TRUE){
    completa = FALSE
   }
  }
  print(A)
  print(escritos)
}