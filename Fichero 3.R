Ejercicio <-  function(vector){
  i <- 1
  j <- 2
  repeat{
    print("11111")
    vector[i] <- vector[i]+ vector[j]
    i <- i + 1
    j <- j + 1
    print(vector)
    if(j>length(vector))
      break
   }
  }

}
Ejercicio(c(1,2,3,4,5))

Capicua <- function(vector) {
  i <- 1
  j <- length(vector)
  repeat{
  if(vector[i]==vector[j]){
    i <- i+1
    j <- j-1
    
  }else{
     print("no es capicua") 
    break
  }
    }
    if(i == j){
      print("es capicua")
      break
    }
     
 }   
}
Capicua(c(1,2,3,2,1))

