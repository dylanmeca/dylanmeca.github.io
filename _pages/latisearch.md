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

<style>
:root{
  --c-bg: #1c1c1c;
  --c-text: #cccccc;
  --c-selected-text: #adc2fc;
  --c-url: #cccccc;
  --c-fragment: #cccccc;
  --c-border: rgba(255,255,255,0.06);
  --c-hover-bg: rgba(255,255,255,0.03);
}

.gcse-searchbox,
.gcse-searchresults,
.gsc-control-cse,
.gsc-control-cse * {
  background: var(--c-bg) !important;
  color: var(--c-text) !important;
  border-color: var(--c-border) !important;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.gsc-input-box {
  display: flex !important;
  align-items: center !important;
  gap: 8px !important;
  padding: 6px 10px !important;
  border-radius: 28px !important;
  border: 1px solid var(--c-border) !important;
  background: rgba(255,255,255,0.01) !important;
  box-shadow: 0 2px 6px rgba(0,0,0,0.5) inset, 0 1px 4px rgba(0,0,0,0.4) !important;
  max-width: 900px !important;
  width: 100% !important;
  box-sizing: border-box !important;
}

.gsc-input-box input.gsc-input,
.gsc-input-box input[type="search"],
.gsc-input-box .gsc-input {
  background: transparent !important;
  color: var(--c-text) !important;
  border: none !important;
  outline: none !important;
  padding: 10px 12px !important;
  font-size: 15px !important;
  line-height: 1 !important;
  width: 100% !important;
  box-shadow: none !important;
  -webkit-appearance: none !important;
  appearance: none !important;
}

.gsc-input-box input::placeholder {
  color: rgba(204,204,204,0.55) !important;
}

.gsc-input-box:focus-within {
  box-shadow: 0 4px 10px rgba(0,0,0,0.6), 0 0 0 3px rgba(173,194,252,0.03) !important;
  border-color: rgba(173,194,252,0.12) !important;
}

.gsc-search-button-v2,
.gsc-search-button {
  background: revert !important;
  color: revert !important;
  border: revert !important;
  box-shadow: revert !important;
  background-image: revert !important;
  padding: revert !important;
  width: revert !important;
  height: revert !important;
  cursor: pointer !important;
}

.gsc-search-button-v2 svg,
.gsc-search-button svg {
  fill: revert !important;
  width: revert !important;
  height: revert !important;
}

.gssb_c,
.gssb_c * {
  background: var(--c-bg) !important;
  color: var(--c-text) !important;
  border: 1px solid var(--c-border) !important;
}
.gssb_e, .gssb_f, .gssb_m {
  background: var(--c-bg) !important;
  color: var(--c-text) !important;
}
.gssb_a { color: var(--c-selected-text) !important; font-weight:600 !important; }
.gssb_e:hover, .gssb_f:hover, .gssb_i { background: var(--c-hover-bg) !important; }

.gsc-results .gsc-webResult,
.gsc-results .gsc-result,
.gsc-webResult,
.gsc-result,
.gsc-table-result {
  background: var(--c-bg) !important;
  color: var(--c-text) !important;
  border: 1px solid var(--c-border) !important;
  box-shadow: none !important;
}

.gs-title,
.gs-title a,
.gs-title a:link,
.gs-title a:visited {
  color: var(--c-selected-text) !important;
  text-decoration: none !important;
}
.gs-title b { color: var(--c-selected-text) !important; font-weight:700 !important; }

.gs-visibleUrl { color: var(--c-url) !important; font-size:0.9em !important; }
.gs-snippet { color: var(--c-fragment) !important; opacity:0.95 !important; }

.gsc-webResult.gsc-result.gsc-result-selected,
.gsc-webResult.gsc-result.gs-result.gsc-selected {
  background: rgba(173,194,252,0.06) !important;
  outline: 1px solid rgba(173,194,252,0.12) !important;
}

.gsc-thumbnail, .gsc-thumbnail-inside, .gsc-thumbnail img,
.gsc-thumbnail * {
  background: transparent !important;
  border: none !important;
}

.gsc-thumbnail img,
.gsc-thumbnail-inside img,
.gsc-result .gsc-thumbnail img,
.gsc-result img {
  max-width: 100% !important;
  height: auto !important;
  object-fit: contain !important;
  display: block !important;
  filter: none !important;
  opacity: 1 !important;
  background: transparent !important;
}

.gsc-cursor-box, .gsc-cursor { color: var(--c-text) !important; background: transparent !important; }
.gsc-cursor-page, .gsc-cursor-current-page { color: var(--c-text) !important; }
.gsc-cursor-current-page { background: var(--c-hover-bg) !important; border-radius:4px !important; }

.gsc-adBlock, .gsc-adBlock * {
  background: var(--c-bg) !important;
  color: var(--c-text) !important;
  border-color: var(--c-border) !important;
}

.gsc-control-cse .gsc-table-result,
.gsc-control-cse .gsc-results .gsc-cseResult { background: transparent !important; }

.gcse-searchbox ::selection, .gcse-searchresults ::selection, .gsc-control-cse ::selection {
  background: transparent !important;
  color: var(--c-selected-text) !important;
}

div[class*="gsc"]:not(.gsc-search-button-v2),
span[class*="gsc"]:not(.gsc-search-button-v2),
li[class*="gsc"]:not(.gsc-search-button-v2),
a[class*="gsc"]:not(.gsc-search-button-v2) {
  background: var(--c-bg) !important;
  color: var(--c-text) !important;
  border-color: var(--c-border) !important;
}

.gsc-structured-close {
  position: absolute;
  right: 8px;
  top: 8px;
  width: 30px;
  height: 30px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  background: transparent;
  border: 1px solid var(--c-border);
  border-radius: 6px;
  color: var(--c-selected-text);
  cursor: pointer;
  z-index: 99999;
  font-weight: 700;
  line-height: 1;
  box-shadow: 0 2px 6px rgba(0,0,0,0.4);
}
.gsc-structured-close:hover {
  background: rgba(255,255,255,0.02);
  transform: translateY(-1px);
}
.gsc-structured-panel {
  position: relative !important;
}
</style>

<script>
(function(){
  function addCloseToPanel(el){
    if(!el || el.querySelector('.gsc-structured-close')) return;
    el.classList.add('gsc-structured-panel');
    var btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'gsc-structured-close';
    btn.setAttribute('aria-label','Cerrar detalle');
    btn.innerText = '✕';
    btn.addEventListener('click', function(e){
      e.stopPropagation();

      el.style.display = 'none';
      try{ el.dispatchEvent(new CustomEvent('gsc-structured-closed',{bubbles:true})); }catch(e){}
    });

    el.style.position = el.style.position || '';
    el.insertBefore(btn, el.firstChild);
  }

  function scanAndAdd(){
    var selectors = [
      '.gsc-webResult .gsc-structured',
      '.gsc-structured',
      '.gsc-rich-snippet',
      '.gs-structured',
      '.gsc-result .gsc-structured',
      '.gsc-structuredData',
      '[data-gsc-structured="true"]',
      '[role="dialog"] .gsc-results',
      '.gsc-details',
      '.gsc-structured-panel'
    ];
    selectors.forEach(function(sel){
      document.querySelectorAll(sel).forEach(function(el){
        addCloseToPanel(el);
      });
    });

    var resultsArea = document.querySelector('.gcse-searchresults, .gsc-results');
    if(resultsArea){
      var candidates = Array.from(resultsArea.children).filter(function(c){
        var rect = c.getBoundingClientRect();
        return rect.width>50 && rect.height>80 && getComputedStyle(c).display!=='none';
      });
      candidates.forEach(function(c){
        if(c.querySelector('table, dl, .gs-snippet, .gsc-thumbnail, .gs-title') || c.querySelector('[itemtype]')){
          addCloseToPanel(c);
        }
      });
    }
  }

  document.addEventListener('DOMContentLoaded', scanAndAdd);
  window.addEventListener('load', scanAndAdd);

  var observer = new MutationObserver(function(){ scanAndAdd(); });
  observer.observe(document.body, {childList:true, subtree:true});
})();
</script>
