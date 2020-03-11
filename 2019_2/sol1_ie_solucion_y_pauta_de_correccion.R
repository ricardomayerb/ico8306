#' ---
#' title: "Solemne 1, parte R. Pauta de corrección."
#' author: Ricardo Mayer
#' ---
#'


#' Comentario general: Una parte de los objetivos es aprender el uso de R, aunque el objetivo 
#' principal sigue siendo *hacer estadística correctamente* usando R. Por esa razón el uso de 
#' de las funciones adecuadas recibe *algo* de puntaje (típicamente un cuarto del puntaje), aunque no estén correctamente empleadas en 
#' el contexto del problema planteado. En la próxima evaluación probablemnete ya no 
#' no habrá puntaje asignado por usar incorrectamente la función correcta.
#' 

#' 1. Use la función read_excel para cargar los datos que se encuentran en el archivo excel
#'  datos_ie.xlsx
#'  

# Esta parte no tiene puntaje porque estaba resuelta en el enunciado.
library(readxl)

misdatos <- read_excel("datos_ie.xlsx")


#' 2. Para la variable "velocidad_viento", que es una de las columnas de los datos 
#' que acaba de cargar, encuentre lo siguiente:
#' 2.1 el cuantil 0.025 (2 pto)
#' 2.2 la mediana  (2 pto)
#' 2.3 el cuantil 0.975 (2 pto)
#' Nota la función quantile es la que calcula cuantiles de un vector. Por ejemplo si el vector se llama x y
#' queremos calcular el cuantil 37 escribiremos en R quantile(x, 0.37)

vel <- misdatos$velocidad_viento
vq025 <- quantile(vel, 0.025)  # 2 puntos
vq500 <- quantile(vel, 0.5) # 2 puntos
vq975 <- quantile(vel, 0.975) # 2 puntos

c(vq025, vq500, vq975)

# Notas para la correción:
# - no es necesario que la consola muestre los valores, sólo calcularlos
# - no es necesario guardar los resultados en objetos (i.e. usar <- )
# - aunque la función quantile fue sugerida para poder responder correctamente, el enunciado 
# no lo obliga a usarla. Por ejemplo en el caso de la mediana, es posible obtenerla
# usando la función summary. Eso no tiene penalizacion
# - Usar la función quantile, con el percentil correcto, pero
# sin usar el vector correcto (misdatos$velocidad_viento) recibe 0.5 puntos
# - Usar la función quantile con el vector correcto pero pero un error en el percentil, 
# recibe 1 punto (es más grave equivocarse de variable que en la característica de la variable)
 


#' 3. Para la variable "temperatura" compute lo siguiente
#' 3.1 la media  (2 pto)
#' 3.2 la desviación estandar (2 pto)
#' 3.3 la cantidad de observaciones (n) (2 pto)
#' 3.4 la desviación estandar, dividida por la raíz de n (2 pto)


tem <- misdatos$temperatura 
tmu <- mean(tem) # 2 puntos
tsd <- sd(tem) # 2 puntos
n <- length(tem) # 2 puntos
tsdn <- tsd/sqrt(n) # 2 puntos

c(tmu, tsd, n, tsdn)

# Notas para la correción:
# - no es necesario que la consola muestre los valores, sólo calcularlos
# - no es necesario guardar los resultados en objetos (i.e. usar <- )
# - Para cada item, equivocarse de vector o variabel (misdatos$velocidad_viento) recibe 0.5 puntos
# - En 3.3 si su método revela solo indirectamente la cantidad de observaciones, recibe 0.5 puntos
#  Por ejemplo: imprimir todos los valores y ver cuantos valores se imprimen o leer en Environment cuantas filas tiene la base de datos.
# - En 3.4 puede recibir todo el puntaje si el resultado es correcto, aunque haya recibido 0.5 puntos en 3.3




#' 4. Grafique los histogramas de estas cuatro variables: temperatura, humedad,
#' punto_rocio y velocidad_viento. Puede usar cualquier función y paquete de R 
#' que grafique histogramas (4 puntos)

hist(misdatos$punto_rocio, breaks = 21) # 1 punto 
hist(misdatos$temperatura, breaks = 21) # 1 punto
hist(misdatos$humedad, breaks = 21) # 1 punto
hist(misdatos$velocidad_viento, breaks = 21) # 1 punto

# Notas para la correción:
# - no importa el paquete/funcion espefico usado para graficar el histograma
# - no importa el numero de clases (breaks) usados
# - en cualquier item, si se equivoca de variable recibe 0.25 puntos



#' 5. Use el comando pnorm, para encontrar la probabilidad de que una variable aleatoria normal
#' estándard esté entre -1 y 1.2, es decir, encontrar P(-1 <= z <= 1.2)
#' Nota, el comando pnorm asume por defecto que nuestra normal es estándar. (2 puntos)

pnorm(-1)
pnorm(1.2)
pnorm(1.2) - pnorm(-1)   # 2 puntos , ver notas para la corrección

# Notas para la correción:
# - En este caso sí es obligatorio usar el comando pnorm
# - pnorm(-1) y pnorm(1.2) por separado otorgan 0.5 puntos cada uno
# - para recibir el puntaje completo es necesario que calculen la diferencia pnorm(1.2) - pnorm(-1)


#' **Procedimiento para pedir recorreción**:
#' Si Ud. encuentra algún error en el puntaje asignado según esta pauta, puede solicitar una reevaluación de la siguiente manera:
#' 
#' - Tome el script que usted escribió durante la solemne y asigne, como comentarios
#' en el script, los puntos que usted considere adecuado *de acuerdo a la pauta de corrección*.
#' - Calcule el puntaje total y compárelo con el puntaje que obtuvo en esta corrección.
#' - Si ambos puntajes difieren, envíe un correo a su profesor, adjuntando su script con su propia corrección.
#' 