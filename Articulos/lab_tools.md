---
layout: post14
title: lab_tools
---

[![Build Status](https://img.shields.io/github/stars/dylan14567/lab_tools.svg)](https://github.com/dylan14567/lab_tools)
[![License](https://img.shields.io/github/license/dylan14567/lab_tools.svg)](https://github.com/dylan14567/lab_tools/blob/master/LICENSE)
[![dylan14567](https://img.shields.io/badge/author-dylan14567-green.svg)](https://github.com/dylan14567)
[![bug_report](https://img.shields.io/badge/bug-report-red.svg)](https://github.com/dylan14567/lab_tools/blob/master/.github/ISSUE_TEMPLATE/bug_report.md)
[![security_policy](https://img.shields.io/badge/security-policy-cyan.svg)](https://github.com/dylan14567/lab_tools/blob/master/SECURITY.md)
[![Bash](https://img.shields.io/badge/language-Bash-blue.svg)](https://www.gnu.org/software/bash/)
![alt text](https://github.com/dylan14567/lab_tools/raw/master/20201008_114639.jpg)

Lab_tools es un sistema creado por dylan14567, que funciona en sistemas operativos GNU/Linux, el sistema lab_tools te ayuda instalar
programas en linux.

Al ejecutar el script ``` ./lab_tools ```, tienes que escribir ``` start ``` para iniciar el sistema de esta manera ``` ./lab_tools start ``` y para actualizar el sistema escribe este comando ``` ./lab_tools update ```.

# Instalación

Para instalar lab_tools en linux ejecuta estos comandos en tu Terminal Linux.

```shell

apt-get install wget -y
wget https://raw.githubusercontent.com/dylan14567/lab_tools/master/lab_tools
chmod +x lab_tools
./lab_tools start

```

Para instalar lab_tools en TermuxAlpine, ejecuta estos comandos.

```shell

apk add bash 
apk add wget
wget https://raw.githubusercontent.com/dylan14567/lab_tools/master/lab_tools
chmod +x lab_tools
./lab_tools start

```

# Instalar Ubuntu en Termux

Para instalar Ubuntu en Termux, ingresa al menu del sistema lab_tools, y escribe 7, luego pulsa en ENTER, y se comenzara a instalar Ubuntu.

Una vez instalado Ubuntu, debes iniciar el sistema Ubuntu con el comando startubuntu.

/FIN/

# Solución de error con dpkg en Ubuntu

Si haz tenido un problema al instalar un paquete apt, y te salido error de dpkg.
La solución es esta:

```shell
cd /var/lib/dpkg/info
rm -rf *;ls
cd --
sudo apt install -f

```

# Contribuyendo

¿Interesado en contribuir en el proyecto? Nos encantaría tu ayuda. Lab_tools es un proyecto de código abierto, construido una contribución a la vez por usuarios como usted. Consulte <a href="https://github.com/dylan14567/lab_tools/blob/master/CONTRIBUTING.md">el archivo CONTRIBUTING</a> para obtener instrucciones sobre cómo contribuir.

# Licencia

La licencia de este proyecto es <a href="https://github.com/dylan14567/lab_tools/blob/master/LICENSE">MIT</a>




