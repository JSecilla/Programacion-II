MENU <- function(){
 nombre <- NA
 puntuación <-NA
 num <- 0
 repeat{
  cat("BIENVENIDO AL JUEGO HUNDIR LA FLOTA", "\n")
  cat("1.-Configuración", "\n")
  cat("2.-Jugar", "\n")
  cat("3.-Mostrar estadísticas", "\n")
  cat("4.-Abandonar el juego", "\n")
  cat("Introduzca una opción:")
  num <- scan(,,1)
  if((num<1 || num>4)){
    print("Su número no coincide con ninguna opción, porfavor vuelva a insertarlo")
  
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
    Estadísticas()
  }
 }
}

configuracion <- function(){
  nombre <<- readline(prompt = "Introduzca su nombre")
  return(nombre)
}
jugar <- function(){
  cat("Porfavor", nombre, "introduzca 3 puntuaciones")
  puntuación <<- scan(,,3)
}
Estadísticas <- function(){
   resultado <- max(puntuación)
   cat("Hola", nombre,"La mayor puntuación de", puntuación,"es", resultado, "\n")
}
MENU()