---
layout: post1
---

Un repositorio apt es un lugar donde se almacena paquetes, en este tutorial veremos como crear un repositorio apt.

Para crear el repositorio apt tenemos que ir a termux y ejecutar estos comandos.

```shell

pkg update -y && pkg upgrade -y
pkg install gnupg -y
pkg install termux-apt-repo -y

```

Una vez instalado eso tenemos que crear una carpeta con ``` mkdir ``` y dentro de esa carpeta ponemos nuestros paquetes.

Una vez hecho eso tenemos que ir ``` $HOME ``` y poner el siquiente comando:

```shell

cd $HOME
termux-apt-repo nombredelacarpeta dist

```

