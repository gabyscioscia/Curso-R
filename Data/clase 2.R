
read.csv(file ="data/datos felinos")
gatos<- read.csv(file="data/datos felinos") # aca estamos asignando un nombre al archivo y ahora si esta guardado en r como un objeto, si lo dejamos como arriba solo lo muestra pero se borra
ls()
aov (count)
gatos$peso # te muestra los datos del nivel o columna "peso"
gatos$peso + 2 # a todos los datos del nivel le sumas 2
paste ("mi gato es" , gatos$pelaje)
# el resultado es :[1] "mi gato es atigrado" "mi gato es negro"    "mi gato es bicolor" # esta funcion es para juntar dos objetos 
typeof(gatos$peso) 
# [1] "double" esto te tira y dice que tus datos son decimales con precision 2 dosceimales, 
typeof("gatos$ovillo")
read.csv("data/datos felinos_v2")
read
read.csv(file ="data/datos felinos")
gatos<- read.csv(file="data/datos felinos") # en el caso que hay sobreescrito el objeto gatos lo vvuelvo a nombrar con los datos iniciales
mi_vector<- (vector(length = 3)
mi_vector
str(otro vector)
data frame 
edad<- c(2,3,5) # para crear una nueva columna lanombro " edad " y c es para crear un vector 
edad 
gatos
cbind (gatos, edad) # para agregar la columna a nuestra tabla o archivo 
gatos

gatos> cbind (gatos, edad) # para agregar la columna a nuestra tabla o archivo
gatos<-cbind (gatos, edad) # para guardar el archivo con la nueva columna
#para agregar una fila 
levels(gatos$pelaje)
levels(gatos$pelaje)<-c(levels(gatos$pelaje), "carey")
levels(gatos$pelaje)

nuevaFila<- list("carey, 3.3, true, 9") #○ para crear y asignar delas columndaas de la nueva fila
rbind (gatos,nuevaFila) # para agregar la nueva fila
gatos
nuevaFila
as.numeric(c(true, False))
c# apra concatener un objeto, o varioscon algo, por ejemplo
c(mi_character, "a") o c(mi_character, micharacter) # sos veces elmismo objeto
1:10 #el signo te : es para tener unasecuencia de numeros hasta 10
seq(1, 10)
seq(1, 100, length(10))
seq.Date() # se puede hacer con fechas y horas
mi_secuencia<-1:100
tail(mi_secuencia)ultimos 6 lo miso con hade
summary(mi_secuencia) # te da las medidas de resumen 
class(mi_secuencia) #eltipo de variable
str(mi_secuencia)
#EJERCICIO
mi_vector <-1:26
mi_vector
mi_vector*2 
mi_vectorX2<-(mi_vector*2)
names(mi_vectorX2)<-c(LETTERS)
mi_vector_letters<-(names(mi_vectorX2)<-c(LETTERS)
mi_vector_letters<-(names(mi_vectorX2)<-(LETTERS)
mi_vector_letters
default.stringsAsFactors() # para que los valores d eesa columna/variable se mantengan como caracter y no secambien a factor
!true
gatos <- read.csv("data/datos felinos",stringsAsFactors = FALSE)# HAY QUE PONERLO CON MAYUSCULA FALSE si es con minuscula sale error
typeof(gatos$pelaje)
as.is =c(TRUE, TRUE, FALSE)
GATOS$PELAJE
gatos$pelaje
