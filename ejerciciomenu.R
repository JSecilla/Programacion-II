MENU <- function(){
 nombre <- NA
 puntuaci�n <-NA
 num <- 0
 repeat{
  cat("BIENVENIDO AL JUEGO HUNDIR LA FLOTA", "\n")
  cat("1.-Configuraci�n", "\n")
  cat("2.-Jugar", "\n")
  cat("3.-Mostrar estad�sticas", "\n")
  cat("4.-Abandonar el juego", "\n")
  cat("Introduzca una opci�n:")
  num <- scan(,,1)
  if((num<1 || num>4)){
    print("Su n�mero no coincide con ninguna opci�n, porfavor vuelva a insertarlo")
  
  }
  if(num==4){
    print("Juego finalizado")
    break
  }
  if(num==1){
  configuracion()
   
  }
  if(num==2){
    jugar()
  }
  if(num==3){
    Estad�sticas()
  }
 }
}

configuracion <- function(){
  nombre <<- readline(prompt = "Introduzca su nombre")
  return(nombre)
}
jugar <- function(){
  cat("Porfavor", nombre, "introduzca 3 puntuaciones")
  puntuaci�n <<- scan(,,3)
}
Estad�sticas <- function(){
   resultado <- max(puntuaci�n)
   cat("Hola", nombre,"La mayor puntuaci�n de", puntuaci�n,"es", resultado, "\n")
}
MENU()