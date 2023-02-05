---
layout: post
permalink: 2023/02/05/Cómo-instalar-Arch-Linux-en-WSL2.html
description: En este artículo, se te enseñara cómo instalar Arch Linux en WSL2, usando Docker para la imagen de Arch Linux y luego exportarlo en un archivo .tar, para finalmente importarlo a WSL2
img: https://dylanmeca.github.io/assets/img/archlinux-15.png
categories: [Arch Linux, Linux, Informatica, Tecnologia]
author:
   - Dylan Meca
keywords:
   - arch linux
---

![archlinux](https://dylanmeca.github.io/assets/img/archlinux-15.png)

En este artículo, se te enseñara cómo instalar Arch Linux en WSL2, usando Docker para la imagen de Arch Linux y luego exportarlo en un archivo .tar, para finalmente importarlo a WSL2.

## Usando Arch Linux en Docker para luego exportarlo

![archlinux2](https://dylanmeca.github.io/assets/img/archlinux-1.png)
![archlinux2](https://dylanmeca.github.io/assets/img/archlinux-2.png)

Una vez exportado puedes mover el archivo ```.tar``` a una carpeta donde se realizara la importacion a WSL2, en este caso 
movi el archivo: ```archlinux.tar``` a ```/mnt/c/Users/User/Documents/``` y cree una carpeta llamada ```ArchLinux``` donde estaria el disco virtual, 
y para realizar la importacion ejecute el siguiente comando: ```wsl --import Arch ./ArchLinux archlinux.tar```.

```shell
wsl --import [Nombre de la distribucion] ./CarpetaDondeEstaraElDisco archlinux.tar
```

