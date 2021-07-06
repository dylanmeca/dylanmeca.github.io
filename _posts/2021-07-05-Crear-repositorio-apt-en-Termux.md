---
layout: post
description: En este articulo veras como crear un repositorio apt para Termux, un repositorio apt es un lugar donde se almacenan paquetes .deb y de ahi se pueden descargar los paquetes con tan solo tener instalado el respositorio apt en linux.
keywords:
  - repositorio apt
  - apt
  - repositorio
  - crear repositorio apt en termux
  - termux
  - paquetes 
  - deb
  - paquetes .deb
  - localhost
  - linux
  - gpg
  - clave
  - clave gpg
---

Un repositorio apt es un lugar donde se almacena paquetes, en este tutorial veremos como crear un repositorio apt.

Para crear el repositorio apt es nesesario unos paquetes y son los siquientes:

```shell

pkg update -y && pkg upgrade -y
pkg install gnupg -y
pkg install termux-apt-repo -y
pkg install neovim -y

```

Una vez instalado eso tenemos que crear una carpeta con ``` mkdir ``` y dentro de esa carpeta ponemos nuestros paquetes y con el comando ```cd carpeta```, ingresamos a nuestra carpeta.

Luego tenemos que poner estos comandos para generar una clave GPG:

```

gpg --gen-key

```

Una vez hecho eso se habra creado una clave GPG y tenemos que listar las claves disponibles para verificar que se creo la clave y tenemos que poner el comando ``` gpg --list-keys ```

Una vez hecho eso tenemos que ir ``` $HOME ``` y para eso se ejecuta el comando ```cd $HOME```, una vez en $HOME, debemos usar neovim para editar el archivo ```termux-apt-repo```, y para eso ejecutaremos el comando ```nvim $PREFIX/bin/termux-apt-repo```.

Dentro del editor de codigo debes buscar el siquiente codigo dentro de termux-apt-repo:

```python

if False:                                     

print('Signing with gpg...')       
```

Si encuentras esas lineas de codigo reemplaza el ```if False``` por ```if True```, esto habilitara la creación del repositorio apt usando la firma gpg.

Una vez terminado eso ya podemos crear el repositorio apt y para eso ejecutaremos estos comandos:

```shell

cd $HOME
termux-apt-repo nombredelacarpeta dist

```

Cuando ejecutamos eso creamos una carpeta con el nombre dist donde estara las carpetas del repositorio apt, una vez hecho eso nesecitamos instalar apache y para eso ejecutaremos este comando ```pkg install apache2```, cuando se haya instalado debemos mover la carpeta dists y esa carpeta esta dentro de dist por lo que ejecutaremos estos comandos:

```shell

mv dist/dists $PREFIX/share/apache2/default-site/htdocs


```

Cuando ejecutamos este comando movemos la carpeta dists a $PREFIX/share/apache2/default-site/htdocs, la ruta donde esta htdocs es la carpeta donde estan los archivos que seran visibles en el sitio web, para que el sitio web funcione debemos ejecutar el comando ```apachectl```, esto abrira un servidor en localhost en el puerto 8080.

Una vez hecho esto debemos probar que todo funciona correctamente pero primero debemos añadir el repositorio apt a sources.list, pero no lo añadiremos en ese mismo archivo si no tendremos que ejecutar este comando para ir a la carpeta sources.list.d y ahi crear una archivo donde pondremos el repositorio apt ```cd $PREFIX/etc/apt/sources.list.d```, una vez aqui debemos crear un archivo donde pondremos la configuración para usar el repositorio apt y para eso ejecutaremos este comando ```nvim name.list```, una vez dentro del editor de codigo tendremos que poner el siquiente codigo:

```shell

deb http://localhost:8080 termux extras

```

Una vez hecho eso tenemos que ir a $HOME y ejecutar estos comandos:

```shell

cd $HOME
gpg --export --armor correo@dominio >> clave.key

```

Con estos comando habremos exportado una clave GPG, y esta misma clave nos permitira usar el repositorio apt y para eso ejecutaremos el comando ```apt-key add clave.key```, una vez ejecutado ese comando ya podremos probar el repositorio apt y para eso ejecutaremos el comando ```pkg update -y && pkg upgrade -y```, esto actualizara los paquetes y ahi veremos el sitio web donde estan nuestros paquetes.



