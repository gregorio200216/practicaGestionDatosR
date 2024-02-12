getwd()
nuevo_dir <-"c:/practicaGestionDatosR"
setwd(nuevo_dir)
getwd()
dir()
list.files()
if (file.exists(nuevo_dir)){
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else{
  cat("fallo al crear directorio: ", nuevo_dir, "\n")
}

set.seed(25) #Creamos semilla para los números aleatorios
registros = 10 

#Ejercicio 1
edades_descubrimientos = sample(1:150, registros, replace = TRUE)
print(edades_descubrimientos)
mean(edades_descubrimientos)

#Ejercicio2

cantidades_artefactos = sample(1:150, registros, replace = TRUE)
print(cantidades_artefactos)
sum(cantidades_artefactos)

#Ejercicio3

profundidad_hallazgos = sample(1:150, registros, replace = TRUE)
print(profundidad_hallazgos)
max(profundidad_hallazgos)

#Ejercicio4

materiales_encontrados = sample(c("Oseo","Mineral", "Metal"))
length(materiales_encontrados)


#Ejercicio5
años_excavaciones = sample(1:150, registros, replace = TRUE)
print(años_excavaciones)
length(años_excavaciones)

#Ejercicio6 HECHO EN CASA

matriz

matriz = matrix (c(1:9), 
                 nrow= 3, 
                 ncol= 3, 
                 byrow= F, 
                 dimnames = list(c(1915,1980,1965), c("Itálica","valencina","osuna")))
print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas) #Suma de cada fila
matriz["1965", ] # El año de más excaciones

#Ejercicio7 HECHO EN CASA


matriz = matrix (c(1:9), 
                 nrow= 3, 
                 ncol= 3, 
                 byrow= F, 
                 dimnames = list(c(1,2,3), c("sitio1","sitio2","sitio3")))

print(matriz)
columna_numero = "sitio1" #Asignamos un valor para calcular la media de la columna deseada
media_columna <- mean(matriz[, columna_numero]) #Así se consigue la media de la columna
print(media_columna)
matriz[ ,"sitio1"]

#Ejercicio8 HECHO EN CASA

matriz = matrix (c(1:9), 
                 nrow= 3, 
                 ncol= 3, 
                 byrow= F, 
                 dimnames = list(c("E.Hierro","Romano","Medieval"), c("Metales","óseos","cerámica")))

print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas) #Suma de cada fila
matriz["Medieval", ] # El periodo con más artefactos

#Ejercicio 9 HECHO EN CASA

matriz = matrix (c(1:9), 
                 nrow= 3, 
                 ncol= 3, 
                 byrow= F, 
                 dimnames = list(c("sitio1","sitio2","sitio3"), c(1,2,3)))

print(matriz)
sumafilas = apply(matriz, 1, sum)
print(sumafilas) #Suma de cada fila
matriz["sitio1", ] #Sitio con menos pofundidades

#Ejercicio 10 HECHO EN CASA

matriz = matrix (c(1:9), 
                 nrow= 3, 
                 ncol= 3, 
                 byrow= F, 
                 dimnames = list(c("E.Hierro","Romano","Medieval"), c("Metales","óseos","cerámica")))

print(matriz)
sumacolumnas = apply(matriz, 2, sum)
print(sumacolumnas) 
matriz[ ,"cerámica"]


#Ejercicio 11

yacimiento = sample(c("Yac1","Yac2", "Yac3"), registros, replace = TRUE)
tipo_artefactos = sample(c("Oseo","Mineral", "Metal"), registros, replace = TRUE)
fecha_descubrimiento = sample(1:150, registros, replace = TRUE)
descripcion =  sample(c("Moneda","Pirita", "Fémur"), registros, replace = TRUE)

registros_artefactos = data.frame(
  yacimiento = yacimiento,
  tipoart = tipo_artefactos,
  fecha = fecha_descubrimiento,
  desc = descripcion
)                 
print(registros_artefactos)

#Ejercicio12
Equipo = sample(c("equipo1","equipo2", "equipo3"), registros, replace = TRUE)
yacimiento = sample(c("Yac1","Yac2", "Yac3"), registros, replace = TRUE)
fecha_inicio = sample(1:150, registros, replace = TRUE)
fecha_fin = sample(150:175, registros, replace = TRUE)

excavaciones_equipo = data.frame(
  equipo = Equipo,
  yacimiento = yacimiento,
  fechainic = fecha_inicio,
  fin = fecha_fin
)
print(excavaciones_equipo)

#Ejercicio13

yacimiento = sample(c("Yac1","Yac2", "Yac3"), registros, replace = TRUE)
edad = sample(1:40, registros, replace = TRUE)
sexo = sample(c("hombre", "mujer"), registros,replace= TRUE)
descripcion =  sample(c("húmero","cráneo", "Fémur"), registros, replace = TRUE)

datos_esqueletos = data.frame(
  yacimiento = yacimiento,
  edad = edad,
  sexo = sexo,
  descripcion = descripcion
)
print(datos_esqueletos)

#Ejercicio 14 HECHO EN CASA

yacimiento = sample(c("Yac1","Yac2", "Yac3"), registros, replace = TRUE)
altitud  = sample(1:3000, registros, replace = TRUE)
longitud = sample(0:180, registros, replace = TRUE)
latitud = sample(0:90, registros, replace = TRUE)

ubicaciones_geograficas = data.frame(
  yacimiento = yacimiento,
  altitud = altitud,
  longitud = longitud,
  latitud = latitud
)
print(ubicaciones_geograficas)
