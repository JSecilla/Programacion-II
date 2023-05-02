Ejercicio1_A <- function(){
  A <- c(2,4,6,8,10)
  print("Inserte un numero par")
  num <- scan(,,1)
  while(num%%2!=0){
    cat("Su número no es par, porfavor inserte un número par")
    num <- scan(,,1)
  }
  for(i in 1:length(A)){
    if(A[i]==num){
      A[i]<- -1
    }
  }
  print(A)
}
Ejercicio1_A()

Ejercicio1_B <- function(){
  A <- c(2,4,6,8,10)
  cat("Inserte",length(A),"numeros pares")
  num <- scan(,,length(A))
  contador <- 0
  for(i in 1:length(num)){
     while(num[i]%%2!=0){
       cat("Un número no es par, porfavor vuelva a insertar los numeros")
       num <- scan(,,length(A))
   }
  }
  for(j in 1:length(num)){
    
   for(i in 1:length(A)){
    if(A[i]==num[j]){
      A[i]<- -1
      contador <- contador +1
    }
  }
  }
  print(A)
  cat("Había",contador,"numeros en el vector")
}
Ejercicio1_B()

Ejercicio2 <- function(){
  A <- c("M","C","L","X","V","I")
  B=c(1000,100,50,10,5,1)
  numR=c("M","C","C","X","V","I")
  suma <- 0
  for(i in 1:length(numR)){
    estado <- TRUE
    j <- 1
    while((j<= length(A))&(estado==TRUE)){
      if(A[j]==numR[i]){
        estado <- FALSE
        suma <- suma + B[j]
      }
      j <- j+1
    }
  }
  print(suma)
  
  
}
Ejercicio2()

Ejercicio2_forma2 <- function(){
  A=c("M","C","L","X","V","I")
  B=c(1000,100,50,10,5,1)
  
  #vector que se quiere convertir
  numR=c("M","C","C","V")
  suma <- 0
  for(i in 1:length(numR)){
    if(numR[i]=="M"){
      suma <- suma +1000
    }else if(numR[i]=="C"){
      suma <- suma +100
    }else if(numR[i]=="L"){
      suma <- suma + 50
    }else if(numR[i]=="X"){
      suma <- suma + 10
    }else if(numR[i]=="V"){
      suma <- suma +5
    }else if(numR[i]=="I"){
      suma <- suma + 1
    }else{
      cat("Hay un error en el numero romano dado")
    }
  }
  print(suma)
}
Ejercicio2_forma2()
