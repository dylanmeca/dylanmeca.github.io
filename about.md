---
layout: default
title: Sobre
---

<style>

.container-fluid {
  max-width: 1024px;
}

</style>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
<link href="https://fonts.googleapis.com/css?family=Public+Sans:300,500&display=swap" rel="stylesheet">
  
# Sobre Mi

Soy Dylan Alexander, un programador de videojuegos, aplicaciones y experto en informática.

Empeze en seguridad informatica en  el 2019, aprendi sobre hacking etico y de ciberseguridad.

El primer lenguaje de programación que aprendi es python y actualmente estoy creando proyectos y esos proyectos estan en [mi perfil](https://github.com/dylan14567) de github.

Tambien aprendi fisica por lo que tuve planeado crear una calculadora de algunas formulas matematicas, como el calculo de velocidad.

La formula matematica del calculo de velocida es ``` v = d ÷ t ``` y en python solo se tendria que poner ``` d / t ``` y haci se haria una calculadora de esa formula matematica.

Tambien he aprendido sobre lo que son las librerias, frameworks y sobre fundamentos de redes, pero tambien aprendido sobre como funciona linux y sobre como usarlo.

He aprendido sobre muchas cosas sobre el tema informatico y de la fisica, tambien aprendi a usar una libreria de python llamada numpy.

Soy experto en el lenguaje de programacion python y he aprendido sobre el desarrollo web para poder crear un sitio web.

![status](https://github-readme-stats.vercel.app/api?username=dylan14567)

# Información del sitio web

Este sitio web es el blog de superdylanyt, en este blog encontraras tutoriales, proyectos, etc.

El sitio web tiene copyright y derechos de autor.

## Políticas

* [Política De Privacidad](https://dylan14567.github.io/2021/03/08/POL%C3%8DTICA-DE-PRIVACIDAD.html)

* [Política De Comentarios](https://dylan14567.github.io/2021/03/08/politica-de-comentarios.html)

* [Política De Cookies](https://dylan14567.github.io/2021/03/21/Pol%C3%ADtica-de-Cookies.html)

## Repositorio apt

Este sitio web tiene un repositorio apt y ese repositorio apt es para termux, [mira más información](https://dylan14567.github.io/2021/03/09/lab-termux.html) en el articulo del repositorio apt. 

# Repositorios

  <div class="container-fluid mt-3">
    <!-- jumbotron -->
    <div class="jumbotron jumbotron-fluid bg-info text-white">
      <div class="container-fluid">
       </div>
    </div>
    <!-- responsive table -->
    <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr class="table-info">
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">URL</th>
            <th scope="col">Language</th>
          </tr>
        </thead>
        <tbody>
          <!-- 
            <tr>
              <td>...</td>
              <td>...</td>
              <td>...</td>
              <td>...</td>
            </tr> 
          -->
        </tbody>
      </table>
    </div>
  </div>
  <!-- jquery cdn  -->
  <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  <!-- custom js -->
<script>

// Create a request variable and assign a new XMLHttpRequest object to it.
var request = new XMLHttpRequest()

// Open a new connection, using the GET request on the URL endpoint
request.open('GET', 'https://api.github.com/users/bibeva/repos', true)

request.onload = function () {
  // Begin accessing JSON data here
  var data = JSON.parse(this.response);

  var statusHTML = '';
  $.each(data, function(i, status) {
    statusHTML += '<tr>';
    statusHTML += '<td>' + status.id + '</td>';
    statusHTML += '<td>' + status.name + '</td>';
    statusHTML += '<td>' + status.html_url + '</td>';
    statusHTML += '<td>' + status.language + '</td>';
    statusHTML += '</tr>';
  });
  $('tbody').html(statusHTML);
}

// Send request
request.send();

</script>
