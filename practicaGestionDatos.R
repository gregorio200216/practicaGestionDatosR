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

set.seed(25)
registros = 10
#Ejercicio 1
edades_descubrimientos = sample(1:150, registros, replace = TRUE)
print(edades_descubrimientos)
median(edades_descubrimientos, na.rm = TRUE)

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
sum(años_excavaciones)

#Ejercicio6

matriz

matriz = matrix (c(1,2,3), 
                 nrow= 3, 
                 ncol= 3, 
                 byrow= F, 
                 dimnames = list(c(1915,1980,1965), c("Itálica","valencina","osuna")))
print(matriz)

#Ejercicio7


matriz = matrix (c(1,2,3), 
                 nrow= 3, 
                 ncol= 3, 
                 byrow= F, 
                 dimnames = list(c(1,2,3), c("sitio1","sitio2","sitio3")))
                  

print(matriz)

#Ejercicio8

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
descripcion =  sample(c("reciñen nacido","craneo", "Fémur"), registros, replace = TRUE)

datos_esqueletos = data.frame(
  yacimiento = yacimiento,
  edad = edad,
  sexo = sexo,
  descripcion = descripcion
)
print(datos_esqueletos)

