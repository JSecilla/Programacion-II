##Problema 1
problema1 <- function(){
  A <- matrix(c(3,4,5,6,7,8,2,8,6), byrow = T, nrow = 3)
  B <- c(2,4,6)
  D <- c()
  
  for (i in 1:length(B)) {
    repeticiones <- 0
    for(j in 1:nrow(A)){
      for(k in 1:ncol(A)){
        if(A[j,k]==B[i]){
          A[j,k]= "*"
          repeticiones <- repeticiones + 1
        }
      }
    }
    D <- c(D,B[i],repeticiones)
  }
 print(A) 
 print(D)
}
problema1()

#Problema 2
problema2 <- function(){
  A <- c(1,4,3,2,5)
  B <- c(1,6,8,4,6)
  c <- c()
  i <- 1
 while (i <= length(A)){
   j <- i+1
   while(j <= length(A)){
     if(A[i]== A[j]){
      A <- A[-j]
     }
     j = j+1
   }
   i = i + 1
 }
  
  h <- 1
  while (h <= length(B)){
    k <- h +1
    contador = 0
    while(k <= length(B)){
      if((B[h]== B[k])& (h != k)){
        B <- B[-h]
      }
      k = k+1
    }
    h = h + 1
  }
  i <- 1
  while (i <= length(A)){
    j <- 1
    while(j <= length(B)){
      if(A[i]== B[j]){
        B <- B[-j]
      }
      j = j+1
    }
    i = i + 1
  }
  print(A)
  print(B)
  
  h <- 1
  if(length(A)>=length(B)){
    c = A
  } else {
    c = B
  }
  
  repeat{
    c[h]= A[h]+ B[h]
    h <- h+1
    if(h > length(B)){
      break
    }
  }
  print(c)
}

problema2()

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
  }
} 

ejercicio_3()

