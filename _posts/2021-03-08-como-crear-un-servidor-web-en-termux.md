---
layout: post2
title: Como crear un Servidor Web en Termux
---

Para crear ester servidor web, es nesesario, que tengas instalado la app Termux en android.

## Paso 1: actualizar paquetes

Una vez que tengas instalado Termux, ejecuta estos comandos:

```shell

pkg update -y
pkg upgrade -y

```

## Paso 2: instalar Apache y PHP

Ya hay un paquete que sirve para instalar a estas dos cosas juntas. Es decir, que a través de apache se procesen los archivos de PHP. Ejecuta estos comandos:

```shell

pkg install php-apache

```

## Paso 3: Instalar neovim

## ¿Qué es Neovim?

Neovim es un editor de texto basado en Vim diseñado para la extensibilidad y usabilidad , para fomentar nuevas aplicaciones y contribuciones .

Ejecuta estos comandos:

```shell

pkg install neovim -y

```

## Paso 4: Configurar Apache para que procese los archivos PHP

Vamos a configurar el archivo httpd.conf; atención aquí, pues la ruta es importante. El archivo de configuración de apache está en:

/data/data/com.termux/files/usr/etc/apache2/httpd.conf

Puedes moverte al directorio con:

```shell

cd $PREFIX/etc/apache2

```

Para que más tarde edites el archivo con neovim:

```shell

nvim httpd.conf

```

## Paso 5: Cargar módulo de PHP

En el archivo que estamos editando vamos a buscar un apartado en donde se carguen los módulos.

Justo ahí vamos a agregar una nueva línea con este contenido:

```conf

LoadModule php7_module /data/data/com.termux/files/usr/libexec/apache2/libphp7.so

```

Lo que estamos haciendo es cargar el módulo de PHP 7 que se encuentra en la ruta que se lee. Aunque en la imagen no se ve completo y se ve que hay un salto de línea ignóralo; pon el comando que puse tal y como está; y listo.

## Paso 6: Establecer handler

Eso no es todo, ahora abajo de donde cargamos el módulo agregamos esto:

```conf

<FilesMatch \.php$>
  SetHandler application/x-httpd-php
</FilesMatch>

```

Le estamos indicando a Apache que los archivos que cumplan con una expresión regular (en donde el archivo sea uno de PHP) sean procesados por un manejador.

## Paso 7: Cambiar index

Para terminar (y esto no es tan necesario) vamos a buscar el fragmento en donde esté un código como el siguiente:

```conf

<IfModule dir_module>
  DirectoryIndex index.html
</IfModule>

```

Lo vamos a cambiar por PHP de modo que quede así:

```conf

<IfModule dir_module>
  DirectoryIndex index.php
</IfModule>

```

Esto lo hacemos para que ponga como índice a index.php y no a index.html (esto es un ajuste y ya; no significa que no podremos servir HTML).

Por ejemplo, si visitamos a sitio.com apache servirá por defecto el index.html, en cambio con este ajuste servirá a index.php.

Guardamos cambios, cerramos el archivo y listo.


## Paso 8: Instalar MySQL y Activarlo

Ejecuta estos comandos:

```shell

cd $HOME
pkg install git -y
pkg install mariadb -y
git clone https://github.com/rajkumardusad/MyServer
cd $HOME/MyServer
chmod +x *;ls
./install
cd $HOME

```

Una vez echo esto, debes ejecutar el comando ``` myserver start ``` y en el menu debes escribir 3 para seleccionar la opción 3 y de esa forma activaras MySQL.
