---
layout: post
description: El Github Pages nos permite alojar sitios webs estáticos, para nuestra empresa o una página personal como un blog, pero tambien para crear sitios web para nuestros proyectos como la documentación. Para crear un sitio web en github pages debemos crear un repositorio en github y subir el codigo al repositorio. 
keywords:
   - github pages
   - github 
   - pages
---

El Github Pages nos permite alojar sitios webs estáticos, para nuestra empresa o una página personal como un blog, pero tambien para crear
sitios web para nuestros proyectos como la documentación. GitHub es una forja para alojar proyectos utilizando el sistema de control de versiones Git.

Para crear un sitio web en github pages debemos 
crearnos una cuenta en github.

Una vez que se ha creado una cuenta en github debemos crear un
repositorio con el siquiente nombre: ***username.github.io***, el username debe ser reemplazado
por tu nombre de usuario, pero para crear un sitio web para nuestro proyecto debemos crear un carpeta llamada docs 
dentro del repositorio del proyecto o crear una rama con el nombre gh-pages.

Dentro del repositorio donde pondremos nuestro sitio web, debemos subir el codigo del sitio web ya creado y para eso tendremos que usar estos comandos:

```shell

git add -A 
git commit -m "Codigo de la pagina"
git push

```

Una vez hecho eso se habra subido el codigo del sitio web al repositorio.

El código se almacena de forma pública en github, aunque también se puede hacer de forma privada, creando una cuenta de pago.

La url del sitio web alojado en github pages, es ***https://username.github.io***, pero en la pagina de tu proyecto seria la misma url solo que apareceria en la parte de adelante
el nombre del proyecto, la url saldria haci: ***https://username.github.io/proyecto***.

Tambien podemos usar jekyll, el cual nos permitiria generar sitios webs estaticos, podemos usar un tema de jekyll llendo a los ajustes de github pages que se encuentra 
en el repositorio, podemos modificar el codigo del tema de la página para hacerlo mejor. Más información de jekyll en [https://jekyllrb.com](https://jekyllrb.com).

Para ir a los ajustes de github pages debemos ir a los ajustes que se encuentra en el repositorio y darle clic donde dice ***pages***, y los ajustes de github pages son:

* ***Source:***

Esta opción es para elegir de cual branch se tomarán los archivos para publicarse. Si le das clic a docs el sitio web tendra que alojarse en una carpeta llamada docs.

* ***Theme Chooser:***

Permite seleccionar un tema para publicar utilizando la herramienta Jekyll.

* ***Custom domain:***

Nos permite añadir un dominio al sitio web.

* ***Enforce HTTPS:***

Permite el uso de HTTPS en nuestro sitio.



