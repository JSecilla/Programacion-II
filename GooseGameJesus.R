################################
#Ejercicio GooseGame
################################

#Lo primero que vamos a hacer es crear la función del juego, lo mejor
#para este tipo de juegos es usar una buleana

Jugar <- function(){
  play <- TRUE
  while(play == TRUE){ #Empezamos creando un bucle que dura hasta que terminemos el juego para que se 
    num = 0            # nos vuelva a mostrar siempre el mensaje por pantalla y num valga 0
   
    while(num != 4){ #Creamos otro bucle dentro del anterior
                     #(nose si es necesario), que nos mostrará el menú siempre que no se seleecione el 4
    print("Welcome to Goose Game!!!")
    cat("Options:", "\n","1.-Configuration", "\n","2.-Play", "\n","3.Record","\n","4.Game Over","\n","Insert an option:")
    num=scan(,,1) #aquí le vamos a pedir siempre el número al usuario
    if(num == 1){
      nombre = readline("Insert your name: ") #Como lo que pedimos no es un numero, usamos readline
    }else if(num== 4){ 
      print("Game Over") #En este buscamos que si el numero es 4, se cambie la buleana y pare el juego
      play <- FALSE
    }else if(num==2){
     cat("Please", nombre , "Insert 3 scores:")
     scores <- scan(,,3) #Aquí le pedimos los 3 datos al usuario que guardaremos en scores
     save(scores, file = "C:\\Users\\jsm01\\OneDrive\\Escritorio\\Segundo\\1º Cuatrimestre\\Programacion\\player.txt.txt")
     #Esto se usa para guardar los datos, pero nosotros esto no lo dimos y nose si funciona así, compruebalo con lo que os haya explicado
    }else if(num ==3){
    maximo <- max(scores) #Aquí sacamos el maximo de los datos pedidos anteriormente
    cat("The higher score is:", maximo)
    guardar <- c(nombre, maximo) #Aquí juntamos el nombre con la puntuación maxima que es lo que queremos guardar
    save(guardar, file = "C:\\Users\\jsm01\\OneDrive\\Escritorio\\Segundo\\1º Cuatrimestre\\Programacion\\records.txt.txt")
    #Aqui lo hemos guardado igual que antes, nose si así funciona, no obstante tu tienes que poner tu directorio y cambiarlo
    }else{
      print("Please enter a valid option number") #Esto es por si mete un número que no esté entre 1 y 4
    }
   }
  }
}
Jugar()

###############################################################################
#/////////////////////////////////////////////////////////////////////////////
#Se podría haber hecho de la forma en la que tu lo has planteando llamando a las funciones, pero es meterse
#En un lio bastante grande ya que hay que diferenciar bien entre variables locales y globales, por lo que
#así es más simple, de todas formas de la otra forma también debería de funcionar, pero tienes que tener muy
#claro lo de la buleana a la hora de que se repita siempre el while que eso te fallaba.
