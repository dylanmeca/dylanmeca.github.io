---
layout: post
permalink: 2023/02/06/Se-descubre-un-spyware-en-Tlauncher.html
description: Tlauncher el lanzador pirata de minecraft tiene spyware y es indectable a los escaneos de VirusTotal pero investigando a fondo se descubrio que tiene un spyware, por lo que es importante desinstarlo 
img: https://dylanmeca.github.io/assets/img/tlauncher-tiene-spyware.png
categories: [Ciberseguridad, Informatica, Noticias]
author:
   - Dylan Meca
keywords:
   - tlauncher
---

![tlauncher-spyware](https://dylanmeca.github.io/assets/img/tlauncher-tiene-spyware.png)

Tlauncher el **lanzador pirata de minecraft tiene spyware** y es indectable a los **escaneos de VirusTotal** pero investigando a 
fondo se descubrio que tiene un spyware, por lo que es importante desinstarlo.

La plataforma de TLauncher, que se presenta a sí misma como **“el mejor lanzador de Minecraft”** y que permite la 
instalación de versiones modificadas del videojuego, estaría infectando a los dispositivos de los usuarios con un virus spyware, 
algo que se estaría produciendo por un periodo de varios años.

Este tipo de virus, **según la empresa de seguridad Avast**, puede permitir a los ciberdelincuentes acceso completo a la
información privada de las personas que se registran dentro de los sitios web y las actividades que se realizan en el dispositivo. 
En algunos casos es posible **que estos activen cámaras y micrófonos sin que el usuario lo sepa**.

## Análisis de Tlauncher en VirusTotal y Tria.ge

![tlauncher-virustotal](https://dylanmeca.github.io/assets/img/tlauncher-virustotal.png)

Si [analizamos Tlauncher en VirusTotal](https://www.virustotal.com/gui/file/318df7404e6c4d5538a6d31997b95af52bbb8d40caf5553b3cbd9b1bc4f6db96), 70 escaneres de virus nos dice que Tlauncher no tiene virus, pero a pesar de eso no descartemos que tlauncher tiene virus, porque si lo analizamos en [Triage](https://tria.ge/), nos muestra el comportamiento de Tlauncher y vemos que su comportamiento es igual al de un spyware. 

![tlauncher-triage](https://dylanmeca.github.io/assets/img/tlauncher-triage.png)

A pesar de estas evidencias y analisis, el mismo [Tlauncher desde su sitio web a estado desinformando](https://tlauncher.org/en/news_26/no-spyware-tl_18725.html) a las personas, para que sigan descargando su lanzador pirata de Minecraft. Por lo que hay que tener cuidado con estas falsas noticias que publica el mismo Tlauncher para defenderse. 

## ¿Cómo desinstalar TLauncher del dispositivo?

- Ubicar la aplicación en el buscador de programas de Microsoft dentro del menú de Inicio.
- Una vez ubicado, hacer clic derecho sobre el icono y luego hacer clic en la opción Desinstalar que aparecerá en el menú emergente.
- Se abrirá automáticamente un a ventana emergente en la que se indicará si se desea desinstalar el programa. El usuario deberá hacer clic en el botón Sí.
- TLauncher detectará que se ha empezado el proceso de desinstalación e iniciará una guía para que el usuario pueda hacerlo correctamente.

Una vez terminado el proceso de desinstalación el programa no aparecerá como aplicación, aunque sus archivos podrían quedarse dentro del dispositivo.

- Pulsar las teclas ```Windows + R``` al mismo tiempo para abrir el cuadro de diálogo de Ejecutar del sistema. En el recuadro, el usuario deberá escribir el comando ```%appdata%```.

- Dentro de la carpeta que se abrirá, llamada ```Roaming```, se podrá ver al inicio de la lista de carpetas, dos que tendrán el nombre de ```“.tlauncher”``` y ```“.minecraft”```. Ambas deberán ser eliminadas usando el comando ```Shft + Suprimir``` del teclado para que sean eliminadas definitivamente y no se queden en la papelera.

- Una vez que se han eliminado estos archivos, se deberá instalar un buen antivirus que pueda detectar algún otro archivo infectado.

- Tambien se recomienda desisntalar Java ya que podria haberse infectado con el Tlauncher.
