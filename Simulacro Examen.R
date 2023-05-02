Suma <- function(){
  A <- c(7,9,6,8)
  B <- c(7,3,6,8)
   
  if(length(A)>length(B)){
    while (length(A)!=length(B)) {
      B <- c(0,B)
    }
  }
  if(length(B)>length(A)){
    while(length(B)!=length(A)){
      A <- c(0,A)
    }
  }
  
  resultado <- c()
  for(i in length(A):1){
    if(A[i]+B[i]>=10){
      A[i-1]<- A[i-1]+1
    }
   
  }
  for(i in length(A):1){
    if(A[i]+B[i]>=10 & i!=1){
      resultado <- c(A[i]+B[i]-10,resultado)
    } else if (A[i]+B[i]>=10 & i==1){
      ult <- c(1,A[i]+B[i]-10) 
      resultado <- c(ult,resultado)
    }
    else{
           resultado <- c(A[i]+B[i],resultado)
    }
  }

  print(resultado)
  
}
Suma()


