---
categories: 
   - Noticias
tags:
   - Microsoft
   - Vulnerabilidad
   - Hacking
   - Malware
   - BitLocker
   - RaspberryPi
   - Ciberseguridad
   - Hardware
   - Windows
   - Criptografía
---

BitLocker, el sistema de cifrado nativo de Windows ampliamente utilizado para proteger datos en unidades de almacenamiento, ha sido objeto de una reveladora vulnerabilidad que compromete su seguridad en ciertos escenarios. Un hacker ético, conocido como Stacksmashing, demostró cómo es posible burlar la seguridad de BitLocker en Windows 10 y 11 utilizando una Raspberry Pi y aprovechando una vulnerabilidad en el conector bus LPC.

![caja-fuerte-chip](/assets/img/caja-fuerte-chip.jpg)
> Imagen generada con Bing Designer, con tecnología DALL-E 3.

La revelación de Stacksmashing arroja luz sobre un problema significativo en la implementación de BitLocker en ciertos entornos de hardware, específicamente en aquellos donde el chip Trusted Platform Module (TPM) se encuentra en la placa base y no en la CPU.

El exploit explota una vulnerabilidad en el bus LPC que conecta el chip TPM con la CPU durante el arranque del sistema. En este escenario, el camino entre el chip y la CPU queda desprotegido, lo que permite el acceso a los archivos encriptados almacenados por BitLocker.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/wTl4vEednkQ?si=_eawEUwXF5P0RDa1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe><br />

Utilizando una Raspberry Pi Pico, una tarjeta de bajo costo, Stacksmashing pudo capturar datos en movimiento, incluida la clave de encriptación utilizada por BitLocker. Con esta clave en su poder, el hacker logró acceder a los archivos cifrados en tan solo 43 segundos, como se demostró en un vídeo publicado en su canal de YouTube.

La vulnerabilidad pone de manifiesto una debilidad en la arquitectura de seguridad de BitLocker, especialmente en los casos donde el chip TPM se encuentra en la placa base y no en la CPU. Mientras que los sistemas con el chip TPM integrado en la CPU no se ven afectados por esta vulnerabilidad, muchos ordenadores dependen de un chip TPM independiente en la placa base, especialmente aquellos que necesitan el chip TPM adicional para cumplir con los requisitos de Windows 11.

La solución a esta vulnerabilidad plantea un desafío considerable, ya que implica un posible cambio de hardware para aquellos que confían en BitLocker para la protección de datos sensibles. Optar por CPUs con el chip TPM integrado podría ser una medida preventiva para evitar este tipo de ataques de hardware y garantizar la seguridad de los datos almacenados mediante BitLocker.

### Referencias:

* **BitLocker Drive Encryption:** [Wikipedia](https://es.wikipedia.org/wiki/BitLocker_Drive_Encryption)
* **Introducción a BitLocker:** [Microsoft Learn](https://learn.microsoft.com/es-es/windows/security/operating-system-security/data-protection/bitlocker/)
