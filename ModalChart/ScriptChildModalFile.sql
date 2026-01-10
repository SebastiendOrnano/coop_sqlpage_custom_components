SELECT 'html' AS component;
SELECT '<script>
// Après sauvegarde réussie ou bouton Close
function notifyParentAndClose() {
  window.parent.postMessage({ action: ''refresh'', source: ''workpackage_edit'' }, ''*'');
  
  // Émettre aussi l''événement SQLPage pour compatibilité
  window.dispatchEvent(new CustomEvent("sqlpage:modal:close"));
}
</script>' AS html;
