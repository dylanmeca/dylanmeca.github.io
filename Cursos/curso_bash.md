---
layout: post2
title: Curso Bash
---

En este curso aprenderemos, el lenguaje de programación Bash.
De manera gratuita en youtube.

<iframe width="315" height="315" src="https://www.youtube.com/embed/videoseries?list=PLXlUQkUlBNQM8E4ElZgpGJHkh1kSe31QO" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Que es Bash

GNU Bash o simplemente Bash (Bourne-again shell) es un lenguaje de comandos y shell de Unix escrito por Brian Fox para el Proyecto GNU como un reemplazo de software libre para el shell Bourne. Lanzado por primera vez en 1989, se ha utilizado ampliamente como el shell de inicio de sesión predeterminado para la mayoría de las distribuciones de Linux y MacOS Mojave de Apple y versiones anteriores. Una versión también está disponible para Windows 10 y Android.  También es el shell de usuario predeterminado en Solaris 11.
Bash es un procesador de comandos que generalmente se ejecuta en una ventana de texto donde el usuario escribe comandos que causan acciones. Bash también puede leer y ejecutar comandos desde un archivo, llamado script de shell. Al igual que todos los shells de Unix, es compatible con el agrupamiento de nombres de archivo (coincidencia de comodines), tuberías, here documents, sustitución de comandos, variables y estructuras de control para pruebas de condición e iteración. Las palabras reservadas, la sintaxis, las variables de ámbito dinámico y otras características básicas del lenguaje se copian de sh. Otras características, por ejemplo, el historial, se copian de csh y ksh. Bash es un shell compatible con POSIX, pero con varias extensiones.
Un agujero de seguridad en Bash que data de la versión 1.03 (agosto de 1989), d

Más información en: ​<a href="https://es.wikipedia.org/wiki/Bash" target="_blank">Wikipedia</a>

# Que es GNU/Linux

Linux es una familia de sistemas operativos de código abierto tipo Unix basados ​​en el kernel de Linux, un kernel de sistema operativo lanzado por primera vez el 17 de septiembre de 1991 por Linus Torvalds. Linux normalmente está empaquetado en una distribución de Linux. 

Más información en: ​<a href="https://en.wikipedia.org/wiki/Linux" target="_blank">Wikipedia</a>

# Qué es un sistema operativo

Un sistema operativo es un conjunto de programas que permite manejar la memoria, disco, medios de almacenamiento de información y los diferentes periféricos o recursos de nuestra computadora, como son el teclado, el mouse, la impresora, la placa de red, entre otros.

Los periféricos utilizan un driver o controlador y son desarrollados por los fabricantes de cada equipo. Encontramos diferentes sistemas operativos como Windows, Linux, MAS OS, en sus diferentes versiones. También los teléfonos y tablets poseen un sistema operativo.

Dentro de las tareas que realiza el sistema operativo, en particular, se ocupa de gestionar la memoria de nuestro sistema y la carga de los diferentes programas, para ello cada programa tiene una prioridad o jerarquía y en función de la misma contará con los recursos de nuestro sistema por más tiempo que un programa de menor prioridad.
El sistema operativo se ocupa también de correr procesos. Llamamos proceso a la carga en memoria de nuestro programa, si no está cargado en memoria nuestro programa simplemente “no corre”.

Más información en: ​<a href="https://es.wikipedia.org/wiki/Sistema_operativo" target="_blank">Wikipedia</a>

# Que es una Distribución Linux

Una distribución GNU/Linux (coloquialmente llamada distro) es una distribución de software basada en el núcleo Linux que incluye determinados paquetes de software para satisfacer las necesidades de un grupo específico de usuarios, dando así origen a ediciones domésticas, empresariales y para servidores.

Más información en: ​<a href="https://es.wikipedia.org/wiki/Distribución_Linux" target="_blank">Wikipedia</a>

# Que es un Emulador de terminal

Un emulador de terminal o emulador de consola es un programa informático que simula el funcionamiento de un terminal de computadora en cualquier dispositivo de visualización. Normalmente suele estar accesible pulsando CRTL + ALT + T simultáneamente.

Más información en: ​<a href="https://es.wikipedia.org/wiki/Emulador_de_terminal" target="_blank">Wikipedia</a>

# Que es Advanced Packaging Tool " APT "

Advanced Packaging Tool (Herramienta Avanzada de Empaquetado), abreviado APT, es un programa de gestión de paquetes creado por el proyecto Debian. APT simplifica en gran medida la instalación y eliminación de programas en los sistemas GNU/Linux.

Existen también programas que proporcionan un frontispicio para APT, generalmente
APT fue rápidamente utilizado para funcionar con paquetes .deb, en los sistemas Debian y distribuciones derivadas, pero desde entonces ha sido modificado para trabajar con paquetes RPM, con la herramienta apt-rpm, y para funcionar en otros sistemas operativos, como Mac OS X (Fink) y OpenSolaris (distribución Nexenta OS). Cabe mencionar que a partir de la versión 1.0, esta incluye una barra de progreso que muestra el porcentaje de instalación.

Más información en: ​<a href="https://es.wikipedia.org/wiki/Advanced_Packaging_Tool" target="_blank">Wikipedia</a>

# Comandos Basicos de Bash

* El comando pwd muestra el directorio actual.
* El comando cd cambia de directorio.
* El carácter ~ hace referencia al directorio personal del que ejecuta la orden.
* El comando ls lista el contenido de un directorio. Opciones comunes que modifican cómo se mostrará la información: -l lista con detalle, -h muestra el tamaño más legible, -a muestra los ocultos, -S ordena por tamaño, -t ordena por fecha, -r invierte el criterio de ordenación.
* Para indicar dónde se encuentra un elemento del sistema de ficheros (un archivo o un directorio), utilizo rutas. Éstas pueden ser absolutas (indico todos los directorios que tengo que seguir desde la raíz del sistema) o relativas (indico el camino desde el directorio donde ejecuto la orden).
* Las rutas absolutas siempre empiezan por una barra / (que indica la raíz)
* Si utilizo .. en una ruta estoy haciendo referencia al directorio padre. Un único punto indica el directorio actual.
* Linux distingue entre mayúsculas y minúsculas.
* Si quiero usar espacio en un nombre deberé ponerlo entre comillas o con un carácter de escape (\)
* Usando los cursores arriba y abajo aparecerán las últimas ordenes que he ejecutado.
* Puedo ayudarme del tabulador para terminar de escribir una ruta.
* Con Control+R puedo buscar en el historial de instrucciones.
* El comando history  muestra el historial de instrucciones y puedo ejecutarlas usando !numero_instrucción.
* El comando mkdir sirve para crear directorios.
* El comando rm borra ficheros, y con -r directorios.
* touch crea ficheros vacíos.
* mv mueve elementos o cambia su nombre.
* El comando cp copia ficheros y directorios.
* El símbolo asterisco * equivale a cualquier secuencia de caracteres en el nombre de un elemento.
* El símbolo interrogación ? equivale a un sólo carácter, pudiendo éste ser cualquiera.

# Explicación de Funciónes y Variables

```shell

saludo=hola

```

aqui decimos que la variable saludo es igual a hola.

```shell

echo " $saludo "

```

Aqui colocamos saludo junto a $ para decir que usaremos la variable saludo para ejecutarla.

```shell

function reinicio {
           echo $(clear)

}

reinicio

```

Aqui creamos una función con el nombre reinicio, que ejecutara el comando clear.

```shell

read -p "          ESCRIBE TU NOMBRE >>> " nombre

```

Aqui con read detenemos y con -p hacemos que se pueda escribir una pregunta y en la parte  final colocamos nombre para encerrar lo que escribimos en la variable nombre.

```shell

echo " Hola $nombre "

```

Aqui hacemos que se muestre Hola y que diga la variable nombre.

```shell

read -p "       Quieres salir s/n " s

if [ "$s" = "s" ] ; then
           reinicio
 else
           echo " >:v "

fi

```

Aqui hacemos que se detenga el script para que diga Quieres salir s/n y que el usuario escriba s o n, y  if signfica si, y then signfica entonces.

Entonces decimos, si la variable s es igual a   s entonces el sistema iniciara la función reinicio, else signfica si no es haci.

Entonces si la variable s no es igual a s se mandara el mensaje >:v.

fi es para cerrar el script

/FIN/
