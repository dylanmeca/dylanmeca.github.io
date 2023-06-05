---
categories:
   - Documentación
   - Matematica
tags:
   - Estadistica
---

Es la ciencia que se encarga de recopilar y organizar los datos en tablas y graficos para que apartir de ellas se puedan realizar interpretaciones, hasta tomar decisiones. Gottfried Achenwall fue un economista nacido en Prusia en 1719 y es considerado como el padre de la estadística. Fue el primero en usar la denominación “estadística” para llamar a esta disciplina. Sin embargo, algunos ingleses niegan esa afirmación.

* **Estadistica descriptiva:** Nos enseña a recopilar la información a organizar esa información, a elaborar tablas estadisticas, graficos estadisticos a hacer interpretaciones y algo de analisis estadistico. 
* **Estadistica inferencial:** Generalmente es un estudio de tipo muestral, trabaja con muestras. Se hacen estimaciones, pronosticos , se prueban hipotesis. Todos los resultados obtenidos se generaliza a la población.
* **Población:** Es el conjunto de todas las unidades de información con una caracteristica común. Ejemplo:
  * Los universitarios de Estados Unidos
  * Los electores de Estados Unidos 
* **Muestra:** Es un subconjunto representativo de la población. Ejemplo:
  * Los universitarios del MIT 
  * Los electores de New York 
* **Unidad de información o individuo:** Es un solo dato de la muestra o población.
* **Estadistico:** Son los resultados de los calculos realizados con los elementos de una muestra.

Ejemplo:

* $$ \bar{x} $$ es el simbolo de la media aritmetica
* **Me** o $$ \tilde{x} $$ es el simbolo de la mediana.
* **Mo** es el simbolo de la moda.
* $$ S^{2} $$ es el simbolo de la varianza.
* **S** es el simbolo de la desviación estandar.

* **Parametro:** Son los resultados de los calculos realizados con todos los elementos de la población.

## Variable estadistica 

* **Variable cualitativa:** Estamos hablando de las cualidades de los atributos que pueda tener una variable determinada u objeto del objeto de estudio. Son aquellas variables donde no lo voy a representar con números, sino con una cualidad, con un atributo que tiene. 
* **Variable cualitativa nominal:** Es cuando solamente los nombramos. Se representa con cualidades con nombrar asi al libre albredio.

Ejemplo:
* Paises
* Marca de TV
* Provincias

* **Nominal dicotomicas:** Son aquellos que tienen 2 valores, por ejemplo las respuestas pueden ser si o pueden ser no. Todo lo que se clasifique en 2 posibilidades vienen a hacer dicotomicas.
* **Nominal politomicas:** Tienen más de 2 opciones, más de 2 posibilidades.

* **Variable cualitativa ordinal:** Ordinal viene de orden, quiere decir que hay una jerarquia preestablecida.

Ejemplo:
* Dias de la semana
* Meses del año 
* Grado de oficiales
* Listado de alumnos

* **Variable cuantitativa discreta:** Toman valores enteros. Ej: numero de casa, numero de academias, numero de carpetas, numero de autos.
* **Variable cuantitativa continua:** Toman valores reales. Ej: peso, talla, precio, presión, temperatura.

* **Organización de datos:** Hacemos referencia a que los datos los vamos a organizar en tablas de frecuencia y en graficos estadisticos.

## Tabla de frecuencias
Es una tabla donde se ordena o clasifica a los datos.

* **f. absoluta:** se representa como (fi). Es el numero de elementos de un dato cualquiera.

El fi debe pertenecer a numeros naturales y incluyendo al cero. La sumatoria de todos los fi es igual a n.

* **f. relativa:** es el cociente que hay entre la frecuencia simple y el tamaño de la muestra.

$$ hi = \frac{fi}{n} $$

$$ \sum hi = 1 = 100% $$

El fi debe ser mayor o igual a cero pero menor o igual a n.

Ejemplo:

* f1 = 12, f2 = 14, f3 = 16, f4 = 8

$$ n = \sum fi = 12 +  14 + 16 + 8 = 50 $$

$$ h1 = \frac{f1}{n} = \frac{12}{50} = 0,24 = 24% $$

$$ h2 = \frac{f2}{n} = \frac{14}{50} = 0,28 = 28% $$

$$ h3 = \frac{f3}{n} = \frac{16}{50} = 0,32 = 32% $$

$$ h4 = \frac{f4}{n} = \frac{8}{50} = 0,16 = 16% $$ 

La suma de todas las hi daria como resultado 1 y la suma de todos los porcentajes daria 100%.

* 0,24 = 24%

La coma decimal corre 2 veces a la derecha.

* 0,132 = 13,2%
* 4,243 = 424,3%

* **Fi:** Frecuencia absoluta acomulada. Acomula los valores que va obteniendo.

* F1 = f1
* F2 = f1 + f2
* F3 = f1 + f2 + f3
* F4 = f1 + f2 + f3 + f4
* Fk = f1 + f2 + f3 + ... + fk = n 

* **F.R. Acomulada (Hi):**

* H1 = h1 
* H2 = h1 + h2 
* H3 = h1 + h2 + h3 
* H4 = h1 + h2 + h3 + h4 
* Hk = h1 + h2 + h3 + ... + hk = 1 

## Ej: Var. cualitativa

| Sabor del refresco | fi | hi | hi(%) | 
| --- | --- | --- | --- |
| fresa | 8 | 0,16 | 16% | 
| piña | 10 | 0,20 | 20%
| lucuma | 6 | 0,12 | 12%
| naranja | 15 | 0,30 | 30%
| mango | 11 | 0,22 | 21%
|       | n= 50 | 1 | |

$$ h1 = \frac{8}{50} = 0,16 $$

$$ h5 = \frac{11}{50} = 0,22 $$

## Ej: Var. continua

### Clase 
Son los intervalos que se usan para agrupar cierto numero de elementos en la forma.

$$ \left [ Li, Ls \right > = \left [ Li, Ls \right [ $$

* **Li:** Es el limite inferior.
* **Ls:** Es el limite superior.

Ej:

$$ \left [ 10 ; 30 \right > $$ Toma valores desde 20 a menor de 30. 

### Rango
Es la diferencia entre el valor maximo y minimo de un conjunto de datos.

$$ R = Xmax - Xmin $$

### Número de intervalos
Regla de Sturges.

$$ \texttt{#interv} = 1 + 3,322 * \log(n) $$

* **n:** Tamaño de la muestra.

```                       
                          -> 7
Si n=50 -> #Interv = 6,6 
                          -> 6
```

En la mayoria de libros de estadistica recomiendan trabajar con una cantidad impar de intervalos, por lo tanto se puede tomar el 7.

### Amplitud (A):
Es el numero que te indica de cuanto en cuanto vamos a agrupar los datos.

$$ A = \frac{R}{#intervalos} $$

Ej:

$$ [15 ; 25> $$

$$ A = 25 - 15 = 10 $$ Cuando se conoce el intervalo haci se halla la amplitud.

### Marca de clase ( $$ \bar{xi} $$ ):

$$ \bar{xi} = \frac{Li + Ls}{2} $$

Se conoce como marca de clase al punto medio de un intervalo.

Ej:

$$ [15 ; 25> $$

$$ \bar{xi} = \frac{15 + 25}{2} = 20 $$

<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
