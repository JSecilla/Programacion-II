ejercicio_3 <- function(){
  a <- c(1,2,3,4)
  b <- c(4,3,2,1)
  i <- 1
  j <- length(b)
  iguales <- TRUE
  while(i <= length(a) && j>= 1 && iguales== TRUE)
    {
    if(a[i]==b[j])
      {
      iguales = TRUE
      i <- i+1
      j <- j-1
    }else{
      iguales <- FALSE
    }
  }
  if(iguales==TRUE){
    cat("Son iguales")
  }else{
    cat("Distintos")
  }
}


capicua <- function(){
  num <- c(2,3,1,3,2)
  a <- c()
  b <- c()
  for(i in 1:(length(num)%/% 2) ){
    a <- c(a,num[i])
  }
  for(j in length(num):((length(num)%/%2)+1)){
    b <- c(b,num[j])
  }

  if(length(a)!=length(b)){
    b <- b[-length(b)]
  }

  contador <- 0
  for(i in 1:length(a)){
    if(a[i]==b[i]){
      contador <- contador + 1
    }
  }
  if(contador == length(a)){
    print("Es capicua")
  }else{
    print("No es capicua")
  }
}
capicua()