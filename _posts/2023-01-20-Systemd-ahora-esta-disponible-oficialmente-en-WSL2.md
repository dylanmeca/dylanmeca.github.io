---
layout: post
permalink: /2023/01/20/Systemd-ahora-esta-disponible-en-WSL2.html
description: El subsistema de Windows para Linux (WSL) ahora puede ejecutar systemd dentro de sus distribuciones de WSL. Este cambio significa que WSL será aún más similar a usar distribuciones de Linux en una máquina completa y le permitirá usar software que depende del soporte de systemd.
categories: [WSL, Windows, Tecnologia, Informatica, Linux, Noticias]
author:
   - Dylan Meca
keywords:
   - Systemd
   - WSL2
   - Linux
   - Windows
   - Sistema
   - Administración
   - Servicios
   - Inicialización
   - Compatibilidad
   - Oficial
   - Actualización
   - Recursos
   - Terminal
   - Comandos
   - Integración
   - Desarrollo
   - Virtualización
   - Performance
   - Scripting
   - Shell
   - WSL
   - Microsoft
   - Ubuntu
   - Debian
   - Fedora
   - Arch Linux
   - Contenedores
   - Docker
   - Kubernetes
   - Automatización
   - Script
   - CLI
   - GUI
   - Seguridad
   - SSH
   - Red
   - Firewall
   - Configuración
   - Depuración
   - Documentación
---

El subsistema de Windows para Linux (WSL) ahora puede ejecutar systemd dentro de sus distribuciones de WSL.

<div class='youtube-video'>
  <iframe title="video" width="640" height="390" src="https://www.youtube.com/embed/Ja3qikzd-as" frameborder="0" allowfullscreen></iframe>
</div>
<br />

## ¿Que es Systemd?

> Systemd es un conjunto de componentes básicos para un sistema Linux. Proporciona un sistema y administrador de servicios que se ejecuta como PID 1 e inicia el resto del sistema.

Este cambio significa que WSL será aún más similar a usar distribuciones de Linux en una máquina completa y le permitirá usar software que depende del soporte de systemd.

## ¿Como habilitar systemd en WSL2?

Este cambio solo esta disponible en la versión 0.67.6 y superior, verifique con el comando ```wsl --version```. Si el comando falla
significa que esta ejecutando la versión en Windows de WSL, debe actualizar a la [versión de la Microsoft Store](https://apps.microsoft.com/store/detail/windows-subsystem-for-linux/9P9TQF7MRM4R) y actualizar a la versión
0.67.6 con el comando ```wsl --update```.

Una vez realizado lo indicado, dentro de la distribución linux usada en WSL, debera editar el archivo ```wsl.conf``` ubicada en ```/etc``` para asegurarse de que systemd se inicie en el arranque. Agregue las siguientes lineas:

```conf
[boot]
systemd=true
```

Para más información sobre el tema en: [https://devblogs.microsoft.com/commandline/systemd-support-is-now-available-in-wsl/#what-is-systemd-what-can-you-do-with-it](https://devblogs.microsoft.com/commandline/systemd-support-is-now-available-in-wsl/#what-is-systemd-what-can-you-do-with-it)
