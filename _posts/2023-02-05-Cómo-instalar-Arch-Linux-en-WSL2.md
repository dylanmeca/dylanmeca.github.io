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

En su distribución linux actual, instale Docker y ejecute los siguientes comandos:

![archlinux1](https://dylanmeca.github.io/assets/img/archlinux-1.png)
![archlinux2](https://dylanmeca.github.io/assets/img/archlinux-2.png)

Una vez exportado puedes mover el archivo ```.tar``` a una carpeta donde se realizara la importacion a WSL2, en este caso 
movi el archivo: ```archlinux.tar``` a ```/mnt/c/Users/User/Documents/``` y cree una carpeta llamada ```ArchLinux``` donde estaria el disco virtual, 
y para realizar la importacion ejecute el siguiente comando: ```wsl --import Arch ./ArchLinux archlinux.tar```.

```shell
wsl --import [Nombre de la distribucion] ./CarpetaDondeEstaraElDisco archlinux.tar
```

## Configurando Arch Linux

Una vez realizado los pasos anteriores, se debe abrir el ```Windows Terminal``` y abrir el Arch Linux, para luego poner los siguientes comandos para habilitar systemd en nuestra distribución: 

![archlinux3](https://dylanmeca.github.io/assets/img/archlinux-3.png)

Luego reinicia el Arch Linux, usando: ```wsl --shutdown```, y despues del reinicio entre de nuevo al Arch Linux y ejecute el comando: ```pacman-key --init```.

Una vez realizado eso ejecute los siguientes comandos: 

![archlinux4](https://dylanmeca.github.io/assets/img/archlinux-4.png)
![archlinux5](https://dylanmeca.github.io/assets/img/archlinux-5.png)
