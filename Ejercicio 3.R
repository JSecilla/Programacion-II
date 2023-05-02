##
#Problema 3
 ejercicio_3 <- function(){
   A <- matrix(c(1, 500, 2, 750, 9, 300,
            3, 400, 6, 600, 8, 450,
            4, 850, 5, 850, 7, 650), nrow = 3, byrow = TRUE)
   colnames(A) = c("Orden", "Retribución", "Orden", "Retribución", "Orden", "Retribución")
   
   B <- matrix(0, nrow = (length(A)/2), ncol = 2)
   colnames(B) = c("Orden", "Retribución")
   for (i in 1: ncol(A)) {
     if(i %% 2 == 1){
      for(j in 1:nrow(A)){
        B[A[j,i], 1] = A[j,i]
        B[A[j,i], 2] = A[j,i + 1]
      }
     }  
   }
  print(B)
 } 
 
ejercicio_3()

##
#Ejercicio 1 dfymatrices
DatosPaciente <- function(){
  Tabla <- matrix(c(1.65, 65,
                    1.74, 80,
                    1.70, 77,
                    1.55, 60,
                    1.75, 66,
                    1.58, 65), nrow = 6, ncol = 2, byrow = TRUE)
  colnames(Tabla) <- c("Altura", "Peso")
  rownames(Tabla) <- c("Ana", "Pepe", "Nacho", "Bea", "Gema", "Alba")
  Tabla1 <- matrix(c( "M", 23,
                      "H", 43,
                      "H", 34,
                      "M", 43,
                      "M", 45,
                      "M", 54), nrow = 6, ncol = 2, byrow = TRUE)
  
  colnames(Tabla1)= c("Sexo", "Edad")
  
  Tabla2 <- data.frame(Tabla, Tabla1)
  
  
  IMC <- matrix(0, nrow = nrow(Tabla2), ncol = 1)
  for(i in 1: nrow(Tabla2)){
    IMC[i , 1] <- (Tabla2[i,2])/(Tabla2[i,1])^2
  }
  Peso <- matrix(0, nrow = nrow(Tabla2), ncol = 1)
  for(i in 1: nrow(Tabla2)){
    if(IMC[i,1] < 18.5){
      Peso [i, 1] = "Bajo Peso" 
    } else if((IMC[i,1] >= 18.5)&(IMC[i,1] < 25)){
      Peso [i, 1] = "Normal"
    } else if((IMC[i,1] >= 25)&(IMC[i,1] <= 29.9)){
      Peso [i, 1] = "Sobrepeso"
    } else if(IMC[i,1] > 30){
      Peso [i, 1] = "Sobrepeso"
    }
  }
  Tabla2 <- data.frame(Tabla2, IMC, Peso)
  print(Tabla2)
 }

  
DatosPaciente()  


funcion_1<-function(){
  A=matrix(c(3,4,5,
             6,7,8,
             2,8,6),nrow=3,ncol=3,byrow=TRUE)
  print(A)
  B=c(2,4,6)
  print(B)
  D=c()
  for(x in 1:length(B)){
    cont=0
    i=1
    while(i<=nrow(A)){
      j=1
      while(j<=ncol(A)){
        if(A[i,j]==B[x]){
          cont=cont+1
          D=c(D,A[i,j],cont)
          A[i,j]="*"
        }
        j=j+1
      }
      i=i+1
    }
  }
  print(A)
  print(D)
}
funcion_1()
 

##
#Dataframe y matrices 2
DatosAlumnos <- function(){
  Tabla0 <- matrix(c(2.5, 2.5,
                     2, 4,
                     0.3, 1.6,
                     2.5, 0.9,
                     2.1, 2.4,
                     1.2, 2.8), nrow = 6, ncol = 2, byrow = TRUE)
  Tabla0 <- data.frame(Tabla0)
  dimnames(Tabla0)= list(c("Ana", "Pepe","Nacho","Bea", "Gema","Alba"),c("Parcial1","Parcial2"))
  Nota <- c()
  for ( i in 1:nrow(Tabla0)){
    Nota <- c(Nota, Tabla0[i,1]+Tabla0[i,2])
  }
  Tabla0 <- data.frame(Tabla0, Nota)
  for(i in 1:(nrow(Tabla0)-1)){
    for(j in (i+1):nrow(Tabla0)){
      if(Tabla0[i,3]>Tabla0[j,3]){
        c <- Tabla0[i,]
        Tabla0[i,]= Tabla0[j,]
        Tabla0[j,]= c
      }
    }
  }
  print(Tabla0)
}
DatosAlumnos()