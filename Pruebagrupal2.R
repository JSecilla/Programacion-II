##
#Examen Noa Castro Gonzalez Jesus Secilla Martínez Laura Matías Castañares

situarbarco<-function()
{
  A=matrix("b",10,10)
  print(A)
  #situar un barco
  print("situar barco, en horizontal o en vertical, posiciones seguidas")
  for(i in 1:5)
  {
    print("inserte una fila")
    fila=scan(,,1)
    print("inserte una columna")
    columna=scan(,,1)
    A[fila,columna]="x"
  }
  
  #empieza a tirar
  tirar <- TRUE
  while(tirar==TRUE){
  print(A)
  cat("empezamos a jugar, dispare", "\n")
  print("fila")
  i=scan(,,1)
  print("columna")
  j=scan(,,1)
  print(A)
  if(A[i,j]=="x"){
    A[i,j]="T"
    
  print(A)
  cont=comprobar_barco_hundido(A,i,j)
  print(cont)
  
  if(cont== 6){
    tirar <- FALSE
    print("El barco esta hundido")
  }
  }
  }
  #funci???n que se os pide hacer
}

situarbarco()






comprobar_barco_hundido <- function(A,i,j){
  M <- A
  R <- i
  C <- j
  contador <- 0
  contador1 <- 0
  contador2 <- 0
  contador3 <- 0
  parar <- FALSE
   while((C<=ncol(A))&(parar==FALSE)){
     if(M[R,C]=="T"){
       print("hola")
       contador <- contador + 1
       print(contador)
       C <- C+1
     }else{
       parar <- TRUE
     }
       
   }
  R <- i
  C <- j
  parar1 <- FALSE
  while((C>= 1)&(parar1==FALSE)){
    if(M[R,C]=="T"){
      print("adios")
      contador1 <- contador1 + 1
      C <- C - 1
    }else{
      parar1 <- TRUE
    }
  } 
  R <- i
  C <- j
   parar2<- FALSE
  while((R<=nrow(A))&(parar2==FALSE)){
    if(M[R,C]=="T"){
      contador2 <- contador2 + 1
      R <- R+1
    }else{
      parar2 <- TRUE
    }
  }
   R <- i
   C <- j
  parar3 <- FALSE
  while((R>=1)&(parar3==FALSE)){
    if(M[R,C]=="T"){
      contador3 <- contador3 + 1
      R <- R-1
    }else{
      parar3 <- TRUE
    }
  }
  resultado1 <- contador + contador1
  resultado2 <- contador2 + contador3
  print(resultado2)
return(resultado2)
  
}


