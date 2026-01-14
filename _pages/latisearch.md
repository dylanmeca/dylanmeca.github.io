---
permalink: /latisearch
layout: archive
title: "LatiSearch"
excerpt: "Buscador latinoamericano de diversas fuentes primarias."
author_profile: true
---

<script async src="https://cse.google.com/cse.js?cx=24e3134e524a04543"></script>

<div class="gcse-searchbox"></div>
<div class="gcse-searchresults"></div>

<style id="gcse-dark-mode-basic">
  /* regla base para los contenedores principales */
  .gcse-searchbox, .gcse-searchresults, .gsc-control-cse, .gsc-results-wrapper-visible {
    background-image: none !important;
    background: #0b0b0b !important;
    color: #e6e6e6 !important;
    box-shadow: none !important;
    border-color: #222 !important;
  }

  /* Input y botones */
  .gsc-input, input.gsc-input, .gsc-input-box, .gsc-search-button, .gsc-search-button-v2 {
    background: #141414 !important;
    color: #fff !important;
    border-color: #333 !important;
  }

  /* Resultado (links / títulos / snippet) */
  .gsc-webResult .gs-title a, .gsc-result .gs-title a, .gsc-url-top, .gsc-url-bottom {
    color: #9ad1ff !important;
  }
  .gsc-webResult .gs-snippet, .gsc-result .gs-snippet {
    color: #cfcfcf !important;
  }

  /* Tablas internas y celdas */
  .gsc-table-result, .gsc-table-result table, .gsc-table-result tr, .gsc-table-result td, 
  .gsc-table-result th, .gsc-table-result tbody, .gsc-table-result thead {
    background: transparent !important;
    background-image: none !important;
    color: inherit !important;
    border-color: #333 !important;
  }

  /* Quitar fondos inline que inyecten gradientes o imágenes */
  .gcse-searchresults [style*="background"], 
  .gcse-searchresults [style*="background-color"], 
  .gcse-searchresults [style*="background-image"] {
    background: #0b0b0b !important;
    background-image: none !important;
    color: #e6e6e6 !important;
  }

  /* Resultados promocionados, fragmentos y sugerencias */
  .gs-promotion, .gsc-completion-container, .gsc-completion-container * {
    background: #0b0b0b !important;
    color: #e6e6e6 !important;
    border-color: #222 !important;
  }

  /* Paginación */
  .gsc-cursor-page, .gsc-cursor-current-page {
    color: #e6e6e6 !important;
    background: transparent !important;
  }

  /* Asegurarse de que iconos SVG/imagenes no queden con brillo blanco sobre fondo claro */
  .gcse-searchresults img, .gcse-searchresults svg {
    filter: none !important;
    opacity: 1 !important;
  }

  /* ================================
   Google CSE – Datos estructurados
   Modo oscuro forzado
================================ */

/* Bloques enriquecidos / especiales */
.gsc-richsnippet,
.gsc-richsnippet *,
.gs-structured-data,
.gs-structured-data * {
  background: transparent !important;
  background-image: none !important;
  color: #e6e6e6 !important;
  border-color: #2a2a2a !important;
}

/* Tablas de datos estructurados */
.gsc-richsnippet table,
.gsc-richsnippet tbody,
.gsc-richsnippet thead,
.gsc-richsnippet tr,
.gsc-richsnippet td,
.gsc-richsnippet th {
  background: #0b0b0b !important;
  background-image: none !important;
  color: #e6e6e6 !important;
  border-color: #333 !important;
}

/* Filas alternas que Google suele aclarar */
.gsc-richsnippet tr:nth-child(even),
.gsc-richsnippet tr:nth-child(odd) {
  background: #0b0b0b !important;
}

/* Labels, claves y metadatos */
.gsc-richsnippet th,
.gs-structured-data-label,
.gs-structured-data-key {
  color: #b5b5b5 !important;
}

/* Valores */
.gs-structured-data-value {
  color: #e6e6e6 !important;
}

/* Ratings, estrellas, precios */
.gs-rating,
.gs-rating span,
.gs-price,
.gs-price * {
  background: transparent !important;
  color: #f1f1f1 !important;
}

/* Quitar fondos inline inyectados */
.gsc-richsnippet [style*="background"],
.gs-structured-data [style*="background"] {
  background: #0b0b0b !important;
  background-image: none !important;
  color: #e6e6e6 !important;
}

/* Cajas informativas internas */
.gsc-richsnippet .gs-info,
.gs-structured-data-box {
  background: #111 !important;
  border: 1px solid #2a2a2a !important;
}

/* Iconos SVG dentro de datos estructurados */
.gsc-richsnippet svg,
.gs-structured-data svg {
  fill: currentColor !important;
  color: #e6e6e6 !important;
}

/* Enlaces dentro de datos estructurados */
.gsc-richsnippet a,
.gs-structured-data a {
  color: #9ad1ff !important;
}

/* Hover */
.gsc-richsnippet a:hover,
.gs-structured-data a:hover {
  color: #c4e3ff !important;
  text-decoration: underline;
}
</style>

<script>
(function(){
  // Intentar inyectar la hoja de estilos en head (si no está ya)
  if (!document.getElementById('gcse-dark-mode-basic')) {
    var s = document.createElement('style');
    s.id = 'gcse-dark-mode-basic';
    s.textContent = ''; // ya insertamos la versión en el <style> anterior; esto protege por si se usa solo el script
    document.head.appendChild(s);
  }

  // MutationObserver para atrapar nodos que CSE inserte dinámicamente
  var observer = new MutationObserver(function(mutations){
    mutations.forEach(function(m){
      m.addedNodes && m.addedNodes.forEach(function(node){
        try {
          if (!(node instanceof Element)) return;
          // Si aparece el contenedor de resultados, forzamos repaint aplicando una clase (opcional)
          if (node.matches && (node.matches('.gcse-searchresults') || node.matches('.gsc-control-cse') || node.querySelector('.gsc-control-cse'))) {
            document.documentElement.classList.add('gcse-dark-mode-applied');
          }
          // Forzar limpieza de estilos inline que puedan contener fondos claros
          if (node.querySelectorAll) {
            var els = node.querySelectorAll('[style*="background"], [style*="background-color"], [style*="background-image"]');
            els.forEach(function(e){
              e.style.background = '#0b0b0b';
              e.style.backgroundImage = 'none';
              e.style.color = '#e6e6e6';
              // mantener bordes oscuros
              if (e.style.borderColor) e.style.borderColor = '#222';
            });
          }
        } catch(err){
          // silencioso
        }
      });
    });
    // También intentar inyectar en iframes same-origin que se creen
    tryInjectIntoIframes();
  });

  observer.observe(document.documentElement, { childList: true, subtree: true });

  // Intentar inyectar CSS en iframes que sean same-origin
  function tryInjectIntoIframes(){
    var iframes = document.querySelectorAll('.gcse-searchresults iframe, iframe.gsc-iframe, .gsc-results iframe');
    iframes.forEach(function(iframe){
      try {
        var id = 'gcse-dark-mode-iframe-styles';
        var doc = iframe.contentDocument || iframe.contentWindow.document;
        if (!doc) return;
        if (!doc.getElementById(id)){
          var st = doc.createElement('style');
          st.id = id;
          st.textContent = `
            /* Mismas reglas dentro del iframe (fallback) */
            .gsc-control-cse, .gsc-results-wrapper-visible, .gsc-table-result { background: #0b0b0b !important; color: #e6e6e6 !important; background-image:none !important; }
            a { color: #9ad1ff !important; }
            table, td, th { background: transparent !important; color: inherit !important; border-color: #333 !important; }
            [style*="background"] { background: #0b0b0b !important; background-image:none !important; color: #e6e6e6 !important; }
          `;
          doc.head && doc.head.appendChild(st);
        }
      } catch(e) {
        // Si el iframe es cross-origin, no se puede modificar: capturamos y seguimos.
        // console.warn('No se puede acceder al iframe (cross-origin) para aplicar CSS.');
      }
    });
  }

  // Primer intento inmediato
  tryInjectIntoIframes();

  // pequeña función para permitir re-aplicar manualmente si quieres (en consola)
  window.applyGcseDark = function(){
    // trigger observer by adding/removing class
    document.documentElement.classList.toggle('gcse-dark-mode-applied');
    tryInjectIntoIframes();
    return 'Intentado aplicar modo oscuro a CSE';
  };
})();
</script>
