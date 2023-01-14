---
layout: post
description: Windows Subsystem for Linux es una capa de compatibilidad desarrollada por Microsoft para correr ejecutables de Linux. En conclusión WSL 1, hace que las aplicaciones de Linux se ejecuten junto con otras aplicaciones de Windows, la memoria y la CPU solo se utilizan cuando se ejecutan aplicaciones de Linux
categories: [Ubuntu, Linux, WSL, Consejos, Informatica]
permalink: /2021/10/04/mi-opinion-de-wsl-1.html
author:
    - Dylan Meca
keywords:
    - WSL
    - Windows Subsystem for Linux
    - Linux
    - distribucion linux
    - distribucion
    - memoria RAM
    - RAM
    - aplicaciones de linux
    - aplicaciones
    - software
    - cual es mi opinion de wsl
    - mi opinion de wsl
    - es recomendado usar wsl
    - WSL 1
    - ejecutables de linux
    - no ocupa mucha memoria
    - Ubuntu
    - proceso
    - procesos
    - consolas
    - el espacio depende de la distribucion linux
    - software dentro de la distribución
    - peso del software
    - software
    - wsl 1
    - cual es mi opinion de wsl 1
    - opinion de wsl 1
---

Windows Subsystem for Linux es una capa de compatibilidad desarrollada por Microsoft para correr ejecutables de Linux nativamente en Windows 10 y Windows Server 2019.

Mi opinión de WSL 1, es que no ocupa mucha memoria y es recomendado para computadoras con al menos 8 GB de RAM, pero lo que también les recomendaría es tener al menos 200 GB del disco duro o más. Ya que el software que instales en la distribución Linux tiene y consume memoria del disco duro, pero ese consumo depende del peso del software.

Cada software instalado en la distribución instalada en el WSL consume una memoria RAM que corresponde al software, es decir el sistema solo asigna la memoria RAM necesaria para el software o que el software necesite. Y ese mismo software solo es un proceso del sistema que al cerrarlo la memoria RAM regresa a como estaba antes de abrir ese software. 

La distribución Linux que uso en WSL se llama Ubuntu y me consume 1.4 MB de RAM, pero al abrir esa distribución solo es un proceso del sistema que al cerrar la distribución ese proceso se elimina.

En conclusión WSL 1, hace que las aplicaciones de Linux se ejecuten junto con otras aplicaciones de Windows, la memoria y la CPU solo se utilizan cuando se ejecutan aplicaciones de Linux:

***En la memoria RAM***: si no está ejecutando un programa de Linux, el WSL no usa memoria ni inicia ningún proceso.

* La primera vez que inicia una ventana de Linux, se inician uno o más initprocesos. En mi Windows 10 con Ubuntu 20.04, ocupa 1.4 MB de RAM y, normalmente, el 0% de la CPU.

* La consola inicia varios procesos: algunos procesos de Windows de la consola, un host en segundo plano WSL, y algunos lanzadores de Linux. En mi prueba, todos estos procesos ocupan 9.5 MB de RAM.

* Cada vez que ejecute un programa de Linux, ocupará la memoria y el porcentaje de CPU correspondientes.

* Después de cerrar todas las consolas y los procesos de Linux, todos estos procesos se eliminan.

***En el espacio en disco:*** es ocupado por WSL varía según las distribuciones de Linux que instale en su computadora. Actualmente, es posible instalar múltiples distribuciones : por ejemplo, Ubuntu 20.04 y Debian. De hecho, puede [crear sus propias distribuciones](https://docs.microsoft.com/es-es/windows/wsl/build-custom-distro).

Cuando instala una distribución de Linux desde la Microsoft Store, se instala un lanzador de Linux. La primera vez que ejecuta el programa, descarga un archivo comprimido con la distribución y lo descomprime.

* El espacio en disco ocupado por WSL depende de la distribución de Linux que utilice.

* Normalmente, el archivo comprimido no se elimina. Luego, debe considerar el tamaño del archivo comprimido y de los sistemas de archivos de distribución.

* Al instalar un software dentro de la distribución, es el peso del software el que aumenta el espacio ocupado.

Si deseas instalar WSL en Windows puedes consultar esta página: [https://docs.microsoft.com/es-es/windows/wsl/install](https://docs.microsoft.com/es-es/windows/wsl/install)
