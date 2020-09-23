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

# Que es Advanced Packaging Tool " APT "

Advanced Packaging Tool (Herramienta Avanzada de Empaquetado), abreviado APT, es un programa de gestión de paquetes creado por el proyecto Debian. APT simplifica en gran medida la instalación y eliminación de programas en los sistemas GNU/Linux.

Existen también programas que proporcionan un frontispicio para APT, generalmente
APT fue rápidamente utilizado para funcionar con paquetes .deb, en los sistemas Debian y distribuciones derivadas, pero desde entonces ha sido modificado para trabajar con paquetes RPM, con la herramienta apt-rpm, y para funcionar en otros sistemas operativos, como Mac OS X (Fink) y OpenSolaris (distribución Nexenta OS). Cabe mencionar que a partir de la versión 1.0, esta incluye una barra de progreso que muestra el porcentaje de instalación.

Más información en: ​<a href="https://es.wikipedia.org/wiki/Advanced_Packaging_Tool" target="_blank">Wikipedia</a>

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
