# Laura Arana

## Limpiar el entorno
rm(list=ls())

## instalar/llamar pacman
require(pacman)

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(rio, # función import/export: permite leer/escribir archivos desde diferentes formatos. 
       skimr, # funcion skim: describe un conjunto de datos
       janitor, # función tabyl: frecuencias relativas
       dplyr) # contiene conjuntos de datos.

##Importar datos 
data_csv = import(file="input/datos_censo.csv" , skip=6 , encoding="UTF-8")

data_xls = import(file="input/datos_excel.xlsx" , skip=9)

##Exportar datos
export(x=data_csv, file="output/data_csv.csv")

export(x=data_xls , file="output/data_excel.rds")

##2.3 Convertir
convert(in_file = "input/datos_censo.csv" , out_file="output/datos_covert.rds")

##Explorar bases de datos
data(package="dplyr")

##Obtener datos
db = as_tibble(x = starwars)
head(x = db , n = 5) ## pinta sobre la consola las primeras 5 observaciones de "db"
tail(db) ## pinta sobre la consola las ultimas 5 observaciones de "db"

str(object = mtcars) ## obtener la estructura del objeto "mtcars"

skim(db) ##Nos resume la base de datos 

colnames(db)
db = rename (.data = db, weight=mass, height_cm=height)






                  
