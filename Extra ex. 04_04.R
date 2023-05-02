#EXERCISE-FUNCTION AND FILE
#MAR NUÑEZ CEBRIAN 

option1<-function(name)
{
  print("Insert your name:")
  name=scan(,,1)
  return(name)
}

option2<-function(scores)
{
  print("Please",name,"Insert 3 scores:")
  scores=scan(,,1)
  return(scores)
}

option3<-funtion(high)
{
  high=(max(scores))
  print("The higher score is:",high)
  return(high)
}

goosegame<-function()
{
  print("Welcome to Goose Game!!!")
  print("Options:
              1.-Configuration
              2.-Play
              3.-Record
              4.-Game over
            Insert an option:")
  num=scan(,,1)
  i=1
  while(i<=4)
  {
    i=i+1
    if(num==1)
      name=option1()
    if(num==2)
      scores=option2()
    if(num==3)
      high=option3()
    if(num==4)
      print("Game over!")
  }
}
goosegame()