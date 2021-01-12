---
layout: post22
title: Lab Termux
---

Lab Termux es un repositorio apt creado por dylan14567, este repositorio apt te permite instalar
paquetes deb en Termux.

# Instalar Lab Termux

Para instalar Lab Termux debes ejecutar estos comandos:

```shell

pkg update -y && pkg upgrade -y
pkg install wget vim -y
cd $PREFIX/etc/apt/sources.list.d
vim lab.list

```

Luego dentro del archivo lab.list debes añadir esto:

```shell

deb https://dylan14567.github.io/ termux extras

```

Una vez hecho esto, debes ejecutar estos comandos para descargar la llave de Lab Termux:

```shell

wget https://raw.githubusercontent.com/dylan14567/dylan14567.github.io/master/dists/termux/lab.key
chmod 777 lab.key
apt-key add lab.key

```

Una vez hecho esto, debes ejecutar estos comandos:

```shell

cd $HOME
pkg update -y && pkg upgrade

```

Si esto funciono deberia salir algo haci:

```shell

Hit:1 https://termux.net stable InRelease
Get:2 https://dylan14567.github.io termux InRelease [3807 B]
Ign:3 https://dl.bintray.com/grimler/game-packages-21 games InRelease
Ign:4 https://dl.bintray.com/grimler/science-packages-21 science InRelease
Get:5 https://dl.bintray.com/grimler/game-packages-21 games Release [5344 B]
Hit:5 https://dl.bintray.com/grimler/game-packages-21 games Release
Get:6 https://dl.bintray.com/grimler/science-packages-21 science Release [5348 B]
Hit:6 https://dl.bintray.com/grimler/science-packages-21 science Release
Fetched 3807 B in 4s (817 B/s)
Reading package lists... Done
Building dependency tree
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
Hit:1 https://termux.net stable InRelease
Get:2 https://dylan14567.github.io termux InRelease [3807 B]
Ign:3 https://dl.bintray.com/grimler/game-packages-21 games InRelease
Ign:4 https://dl.bintray.com/grimler/science-packages-21 science InRelease
Get:5 https://dl.bintray.com/grimler/game-packages-21 games Release [5344 B]
Hit:5 https://dl.bintray.com/grimler/game-packages-21 games Release
Get:6 https://dl.bintray.com/grimler/science-packages-21 science Release [5348 B]
Hit:6 https://dl.bintray.com/grimler/science-packages-21 science Release
Fetched 3807 B in 4s (875 B/s)
Reading package lists... Done
Building dependency tree
Reading state information... Done
All packages are up to date.
Reading package lists... Done
Building dependency tree
Reading state information... Done
Calculating upgrade... Done
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

```

Si todo funciono y no ocurrio errores, eso significa que se instalo correctamente.

/FIN/

# Paquetes deb de Lab Termux

Los paquetes disponibles son:

* apktool - arquitectura all


