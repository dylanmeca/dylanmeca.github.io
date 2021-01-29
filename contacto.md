---
layout: post18
title: Contacto
---


<div id="after_submit"></div>
<form id="contact_form" action="https://formspree.io/xqkybgyy" method="POST" enctype="multipart/form-data">
  <div class="row">
    <label class="required" for="name">Tu Nombre:</label><br />
    <input id="name" class="input" name="name" type="text" value="" size="30" required /><br />
    <span id="name_validation" class="error_message"></span>
  </div>
  <div class="row">
    <label class="required" for="email">Tu email:</label><br />
    <input id="email" class="input" name="email" type="text" value="" size="30" required /><br />
    <span id="email_validation" class="error_message"></span>
  </div>
  <div class="row">
    <label class="required" for="message">Mensaje:</label><br />
    <textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br />
    <span id="message_validation" class="error_message"></span>
  </div>
  <div class="row">
    <label class="required" for="genero"></label>
    <select id="genero">
         <option name="genero" value="">Hombre </option>
         <option name="genero" value="">Mujer </option>
    </select>
  </div>
  <br />
  

   <div class="g-recaptcha" data-sitekey="6LcPWfUZAAAAAMO0bfX6yvrHYr_Z2SA3ZConk5mJ"></div>
   <br />

    <input id="submit_button" type="submit" value="Enviar" />
</form>



