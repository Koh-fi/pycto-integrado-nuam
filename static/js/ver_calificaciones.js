document.addEventListener("DOMContentLoaded", () => {
  const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
  [...tooltipTriggerList].map(t => new bootstrap.Tooltip(t));
});

function obtenerSeleccion() {
  return document.querySelector("input[name='seleccion']:checked")?.value;
}

function editarSeleccionado() {
  const id = obtenerSeleccion();
  if (!id) {
    alert("Debe seleccionar una calificación primero.");
    return;
  }
  window.location.href = `http://127.0.0.1:8000/gestores/calificaciones/editar/${id}`;
}

function eliminarSeleccionado() {
  const id = obtenerSeleccion();
  if (!id) {
    alert("Debe seleccionar una calificación primero.");
    return;
  }
  if (confirm("¿Está seguro de eliminar la calificación seleccionada?")) {
    window.location.href = `http://127.0.0.1:8000/gestores/calificaciones/eliminar/${id}`;
  }
}
