---
categories: 
   - Linux
---

En este artículo, se te enseñara cómo instalar Arch Linux en WSL2, usando Docker para la imagen de Arch Linux y luego exportarlo en un archivo .tar, para finalmente importarlo a WSL2.

![archlinux](https://dylanmeca.github.io/assets/img/archlinux-15.png)

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

Una vez instalado sudo en nuestro sistema, utilizando ```nano``` o otro editor de codigo, edite el archivo ```sudoers``` que se encuentra en la carpeta ```/etc``` y encuentre la siguiente linea:

![archlinux6](https://dylanmeca.github.io/assets/img/archlinux-6.png)

En la linea donde dice: ```# %wheel ALL=(ALL:ALL) ALL```, descomentalo y guarda los cambios. Verifica que puedes usar sudo con los siguientes comandos:

![archlinux7](https://dylanmeca.github.io/assets/img/archlinux-7.png)

Luego de eso edite usando ```nano``` el archivo ```locale.gen```, pulse ```CTRL W``` y escriba donde dice ```Search:```, ```en_US``` y descomente la linea: ```#en_US.UTF-8 UTF-8```:

![archlinux8](https://dylanmeca.github.io/assets/img/archlinux-8.png)
![archlinux9](https://dylanmeca.github.io/assets/img/archlinux-9.png)

Luego de eso edite usando ```nano``` el archivo ```vconsole.conf``` que esta ubicado en ```/etc``` y añada lo siguiente:

![archlinux10](https://dylanmeca.github.io/assets/img/archlinux-10.png)

Para poder usar WSLg y tener aplicaciones graficas, recomiendo instalar lo siguiente:

![archlinux11](https://dylanmeca.github.io/assets/img/archlinux-11.png)

En la configuración de ```Windows Terminal``` de Arch Linux añada el ```-u [user]``` en la linea de comandos:

![archlinux12](https://dylanmeca.github.io/assets/img/archlinux-12.png)

Esto nos permitira usar nuestro usuario que creamos.

## Instalando Paru

Para instalar paru, ejecute los siguientes comandos:

![archlinux13](https://dylanmeca.github.io/assets/img/archlinux-13.png)
![archlinux14](https://dylanmeca.github.io/assets/img/archlinux-14.png)

Este seria todo el proceso de instalación de Arch Linux en WSL2.
