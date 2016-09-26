#workspace loaded from  /.RDATA
set.seed (10) 
x<- rpois(1, lambda = 8)
if (x>=10){print ("x es menor a 10") print (paste("x es:", x))} else if (x>5) {print("x es mayor a 5")} else{ print ("xes menor que 5 ")}

switch (x,
        case = action
)
#Ejercicio 1 Usa una declaración if() para imprimir un mensaje que diga si hay algún registro del año 2002 en el dataset gapminder. Haz lo mismo para 2012
gapminder<- read.csv("Data/gapminder-FiveYearData.csv")
(gapminder$year ==2002)
if (any (gapminder$year ==2002)){print("Hay elementos del año 2002")}
if (any (gapminder$year ==2012)){print("Hay elementos del año 2012")} else print ("no hay datos")
# el any es para que te busque en todos los elementos del vector no solo del primero, ya que if te revisa en el primero

for (i in seq(1,10,2)){print(i)}  # armamos una secuencia del 1 al 10 que vaya de a 2 numeros
for (i in seq(from =1, to=10,by= 2)){print(i)}
vector_salida<-vector (mode= "character", 25) # para que te guarde la iteracion edentro de un vector y no trabahje de mas hya que crear antes el vector con la longitud que queersmos o una 

                
mattrixvector_salida<-(matrix (nrow= 5, ncol=5)


for(i in c("a","b", "c")) {
  print(i)
  }
for(i in 1:5){
  for (j in c("a", "b", "c","d","e")){
    print vector_salida<-c(vector_salida, paste()
                           


matrix_salida <- matrix(nrow = 5, ncol = 5)
vector_j <- c('a', 'b', 'c', 'd', 'e')
                        for (i in 1:5) {
                        for (j in 1:5) {
                        valor_j_temp <- vector_j[j]
                        salida_temp <- paste(i, valor_j_temp)
                        matrix_salida[i, j] <- salida_temp
                        }
                        }
                        vector_salida2 <- as.vector(matrix_salida)
                        matrix_salida
vector_salida2<-
  as.vector (matrix_salida)# para convertir la matris en un vector

z <- 1
while (z > 0.1){
  z <- runif(1)
  print(z)
}
# sirve z > 0.1 seria la condición, z runif seria para crar un numero al azar y luego lo imprimis
#o poner c(mode="character", 25)
vector_salida <- c()
for (i in 1:5){
  for (j in c('a', 'b', 'c', 'd', 'e')){
    salida_temporal <- paste(i, j)
    vector_salida <- c(vector_salida, salida_temporal)
  }
}
vector_salida
vector_salida2
matrix_salida
vector_salida == vector_salida2 # con esto vemos q estan en difernet orden 
vector_salida %in% vector_salida2# este te muestra que esta uno dentro de otro 

matrix_salida2 <- matrix(nrow = 5, ncol = 5)
vector_j <- c('a', 'b', 'c', 'd', 'e')
for (i in 1:5) {
  for (j in 1:5) {
    valor_j_temp <- vector_j[j]
    salida_temp <- paste(i, valor_j_temp)
    matrix_salida2[j, i] <- salida_temp
  }
} #cambio el orden de las columnas y filas al nombrar la matrix_salida2[j,i]
vector_salida3 <- as.vector(matrix_salida2)
matrix_salida2
#se puede directamente transponer la matriz con la funcion t
t(matrix_salida)
vector_salida == vector_salida3
vector_salida %in% vector_salida3
#ejercicio 3
(gapminder[gapminder$continent == "Asia", ])
(gapminder[gapminder$continent == "Asia","lifeExp" ])
mean(gapminder[gapminder$continent == "Asia", "lifeExp"])
mean(gapminder$lifeExp[gapminder$continent=="Asia"])#para caluclar el promedio, 
media<-mean(gapminder$lifeExp[gapminder$continent=="Asia"])#lo guardamos 
if(media >70) {"a media de vida es mayor a 70")} else {"la media de vida es menor a 70")}
continentes <- levels(gapminder$continent)
for(continente in continentes){
  media <- mean(gapminder$lifeExp[gapminder$continent == continente])
  if(media > 70){
    print(paste("En", continente, "la media de vida es mayor a 70"))
  } else {
    print(paste("En", continente, "La media de vida es menor a 70"))
  }
}
#ejercicio4
#Modifica el script del ejercicio anterior para que también itere sobre cada pais. Esta vez debe imprimir si la expectativa de vida es menor que 50, entre 50 y 70 o mayor que 70.

mean(gapminder[gapminder$country == "Argentina", "lifeExp"])

mean(gapminder$lifeExp[gapminder$continent=="Asia"])#para caluclar el promedio, 
      
media<-mean(gapminder$lifeExp[gapminder$country=="Argentina"])#lo guardamos 
media

      if(media <50) {print ("a media de vida es menor a 50")} else if (media >50|media<70)
      {print ("la media de vida es es mayor a 50 y menor a 70")} else print 
          ("la media es mayor a 70")
#aca lo hice para un solo pais

paises <- levels(gapminder$country)
for(pais in paises){
  media <- mean(gapminder$lifeExp[gapminder$country == pais])
  if(media <50) {
    print ("a media de vida es menor a 50")
    } else if (media >50|media<70){
      print ("la media de vida es es mayor a 50 y menor a 70")
    } else print  ("la media es mayor a 70")
}
### agregando el nombre del continente y ahciendolo para todos los paises
for(pais in paises){
  media <- mean(gapminder$lifeExp[gapminder$country == pais])
  if(media > 70){
    print(paste("En", pais, "la media de vida es mayor a 70"))
  } else if (media >50|media<70){
    print (paste("En", pais, "la media de vida es es mayor a 50 y menor a 70") else {
    print(paste("En", pais, "La media de vida es menor a 70"))
  }



#Ejercicio 5 - Avanzado
#Escribe un script que itere sobre cada país del set de datos gapminder y pruebe si el nombre del país empieza con ‘B’ y grafique la expectativa de vida versus el tiempo como una gráfico de lineas si la media de la expectativa de vida es menor a 50 años.

