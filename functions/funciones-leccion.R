mi_suma<-function(a, b) {
  suma<-a+b
  return(suma)# return es para q devuelva ese codigo que esta dentro de los parentesis
}


mi_suma(5,4)
mi_suma(a=5, b=4)
kelvin_a_fahr<-function(temp){
  fahr<-(temp- 273.15)*(9/5) +32
return (fahr) } # si no lopongo en el renglon de abajo tengo q separarlo con ;
# para nombres de las funciones usar verbos por que las acciones hacen algo, es solo consejo,y que expliquen bien la funcion
kelvin_a_fahr(373)
temp<-c(273.15, 373)
gapminder <-read.csv("data/gapminder-FiveYearData.csv")
kelvin_a_fahr(gapminder$year) # se puede poner cualquier cosa que sea un vector,este ejemplo tranformo losaños en grados far 

celsius_a_kelvin <- function(temp) {
  kelvin<- (temp + 273.15)
  return(kelvin)
}
celsius_a_kelvin (0)
celsius_a_fahr <- function (celcius_a_Kelvin <-function(temp) {
  kelvin<- (temp + 273.15)
return(kelvin)
} ) {fahr<- (celcius_a_kelvin +)
  
}
name <- function(variables) {
  
}
celsius_a_fahr<-function(temp){
  kelvin<-celsius_a_kelvin (temp) 
  fahr<- kelvin_a_fahr(kelvin)
return(fahr)}

calcPBI <- function(dat) {
  pbi <- dat$pop * dat$gdpPercap
  pbi
}
calcPBI(head(gapminder))

calcPBI <- function(dat, year=NULL, country=NULL) {
  if(!is.null(year)) {
    dat <- dat[dat$year %in% year, ]# esto significa que si no es nulo el año que se leccione solo los años que eligimos
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country,] # esto significa que si no es nulo pais que se leccione solo los paises que eligimos
      }
  gdp <- dat$pop * dat$gdpPercap
  
  new <- cbind(dat, gdp = gdp)
  return(new)
} # el signo de admiracion antes del if niega la condicion, o sea que sería si no es nulo

calcPBI(gapminder, year = 2007,country = "Argentina")
calcPBI(gapminder, year=1987, country = "New Zealand")
calcPBI(gapminder, year= c(1987,1952), country = "New Zealand")
calcPBI((gapminder, year= c(1987,1952), country = "New Zealand")$pbi) 
calcPBI(head(gapminder))

#ejercicio 4

mejores_practicas <- c("Escribe", "programas", "para", "personas", 
                       "no", "para", "computadoras")
paste(mejores_practicas, collapse = " ")



vallar<-function (texto,envoltura){
paste(envoltura, paste (texto, collapse ="_"), 
envoltura)
}
#paste te une lo que tenes dentro del vector(texto en este caso), separado de la forma que pongas dentro de las comilas de collapse

vallar(texto= mejores_practicas, envoltura ="***")
vallar(texto= mejores_practicas, envoltura ="___")

what<-c("que", "es")
vallar2<-function (texto,envoltura){
  paste0(envoltura, paste (texto, collapse =""),
        envoltura)
}
#parandose sobre donde se define la funcion ir a code/insert roxigen skeleton y saleesto de abajopara completar os datos y armar la descripcion de la funcion para desùes compartirla al mundo jaja! 
#' Title
#'
#' @param texto 
#' @param envoltura 
#'
#' @return
#' @export
#'
#' @examples
vallar2<-function (texto,envoltura){
  paste(envoltura, paste (texto, collapse =""),
         envoltura)
}

vallar2(texto = what,envoltura= "¿?")
library (ggplot2)
ggsave("Mi_grafico_mas_reciente.pdf")
pdf("Mi_grafico.pdf", width = 12, height = 8, onefile = TRUE) #   file es para que te ponga todo en un solo archivo si quiero que esten en archivos por separado es otro codigo mas complicado
for(continent in levels(gapminder$continent)){ #es un bucle para que repita un grafico para cada continente
  print(ggplot(data=gapminder[gapminder$continent == continent, ], aes(x=year, y=lifeExp, colour=country)) +
          geom_line())
}
dev.off()

pdf("Life_Exp_vs_time.pdf", width=12, height=12, onefile = TRUE)
ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=country)) +
  geom_line() +
  theme(legend.position = "bottom")
# You then have to make sure to turn off the pdf device!

dev.off()

#guardando datos
dir.create("cleaned.data") #para crear una nueva carpeta

aust_subset <- gapminder[gapminder$country == "Australia",]

write.table(aust_subset,
            file="cleaned.data/gapminder-aus.csv",
            sep=","
)

#el archivo lo guarda con comillas y linea entonces para sacar el numero de fila (poner FALSE en row.names)que te ponen por defecto y las comilla en los nombres
aust_subset <- gapminder[gapminder$country == "Australia",]

write.table(aust_subset,
            file = "cleaned.data/gapminder-aus.csv",
            sep = ",", quote = FALSE, row.names = FALSE
)