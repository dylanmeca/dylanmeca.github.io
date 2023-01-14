---
layout: post
title: Instalar LAMP en Ubuntu
description: En este articulo veremos como instalar LAMP el cual significa (Linux, Apache, MySQL y PHP) en Ubuntu 20.04, pero tambien instalaremos phpMyAdmin. Esta instalación nos permitira tener un sitio web con una base de datos
categories: [Servidores, Ubuntu, Linux, Tutoriales, Informatica]
permalink: /2021/10/19/instalar-lamp-en-ubuntu.html
author:
    - Dylan Meca
keywords:
    - instalar LAMP
    - LAMP
    - como instalar LAMP
    - como instalar LAMP en Ubuntu
    - como instalar LAMP en Linux
    - instalar LAMP en Ubuntu
    - instalar LAMP en Linux
    - Linux
    - Ubuntu
    - Ubuntu 20.04
    - instalar apache2
    - instalar apache
    - instalar mysql
    - instalar php
    - instalar phpMyAdmin
    - instalar php y phpMyAdmin
    - apache2
    - mysql
    - php
    - phpMyAdmin
    - instalar Apache y MySQL y PHP
    - instalar apache en Ubuntu
    - instalar MySQL en Ubuntu
    - instalar PHP en Ubuntu
    - instalar phpMyAdmin en Ubuntu
---

- [Instalar Apache 2](#instalar-apache-2)
- [Instalar MySQL](#instalar-mysql)
- [Instalar PHP y phpMyAdmin](#instalar-php-y-phpmyadmin)

Para instalar LAMP (Linux, Apache, MySQL y PHP) en Ubuntu debemos seguir estos pasos para instalar cada software:

# Instalar Apache 2

Para instalar Apache 2 en Ubuntu 20.04 debemos ejecutar estos comandos pero antes debemos iniciar como root para poder ejecutar estos comandos, pero tambien puedes usar sudo:

```shell
apt update -y
apt install apache2 -y
```

Una vez ejecutado estos comandos se habra instalado apache2 en Ubuntu. Para iniciar el servicio apache2 podemos usar el comando ``` apachectl start ```, para reiniciarlo podemos usar ```apachectl restart``` y para detenerlo podemos usar ```apachectl stop```.

# Instalar MySQL

Para instalar MySQL en Ubuntu debemos ejecutar estos comandos:

```shell
apt install mysql-server mysql-client -y
```

Una vez instalado tenemos que ejecutar este comando para entrar a mysql: ```mysql -u root -p```. Al ejecutarlo nos pedira la contraseña del usuario root. Y en la consola de mysql ejecutamos estos comandos:

```sql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
```

Antes de ejecutar el comando debemos cambiar ```'password'``` por la contraseña que nosotros elijamos. Una vez que ejecutamos ese comando debemos ejecutar este comando para verificar los cambios:

```sql
SELECT user,authentication_string,plugin,host FROM mysql.user;
```

Si en la tabla donde dice ```plugin``` aparece ```mysql_native_password``` significa que si se cambio. Luego ejecutamos el comando ```FLUSH PRIVILEGES``` para actualizar los privilegios. 

# Instalar PHP y phpMyAdmin

Para instalar PHP debemos ejecutar estos comandos:

```shell
apt install php libapache2-mod-php php-mysql -y
```

Una vez instalado PHP, debemos instalar phpMyAdmin y para eso debemos ejecutar estos comandos:

```shell
apt install phpmyadmin -y
```

Una vez instalado debemos ir a ```http://localhost/phpmyadmin``` para verificar su instalación. Luego saldra un inicio de sesion donde tendremos que poner nuestro nombre de usuario y contraseña.

Y una vez finalizado todo esto habremos instalado LAMP en Ubuntu.
