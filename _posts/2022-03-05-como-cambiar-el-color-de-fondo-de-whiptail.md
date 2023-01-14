---
layout: post
description: Muchas veces vemos que el fondo del dialogo de whiptail es de color morado, y es probable que alguna vez hemos querido cambiarlo de color. En este articulo veremos como cambiar el fondo de whiptail a un color azul.
categories: [Linux, Ubuntu, WSL, Informatica, Servidores]
permalink: /2022/03/05/como-cambiar-el-color-de-fondo-de-whiptail.html
img: https://dylanmeca.github.io/assets/img/whiptail-fondo.png
author:
    - Dylan Meca
keywords:
    - como cambiar
    - como cambiar el color
    - como cambiar el color de fondo
    - fondo
    - color
    - color de fondo
    - como cambiar el color de fondo de whiptail
    - whiptail
    - whiptail de ubuntu
    - ubuntu
    - fondo morado
    - fondo azul
    - fondo de whiptail
    - linux 
    - ubuntu server
    - paleta de colores
    - paleta de colores de ubuntu
    - colores de ubuntu
---

<img src="https://dylanmeca.github.io/assets/img/whiptail-fondo.png"  alt="Imagen de fondo de whiptail">

Muchas veces vemos que el fondo del dialogo de whiptail es de color morado, y es probable que alguna vez hemos querido cambiarlo de color. 

En esta ocasión lo cambiaremos de color morado a azul. Para eso nesecitamos cambiar la paleta de colores de Ubuntu a la original. 

El comando es: ```sudo update-alternatives --config newt-palette```, una vez ejecutado el comando tendras que seleccionar el que dice ```1 ... palette.original```, una vez hecho
esto, el fondo de whiptail sera de color azul.
