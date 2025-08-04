  const botonesExpandir = document.querySelectorAll('.btn-ampliar');
  const modal = document.getElementById('modalInfo');
  const cerrarBtn = document.querySelector('.cerrar-modal');

  botonesExpandir.forEach(boton => {
    boton.addEventListener('click', () => {
      modal.style.display = 'flex';
    });
  });

  cerrarBtn.addEventListener('click', () => {
    modal.style.display = 'none';
  });

  window.addEventListener('click', (e) => {
    if (e.target === modal) {
      modal.style.display = 'none';
    }
  });

  const botonesEliminar = document.querySelectorAll('.btn-eliminar');
  const modalEliminar = document.getElementById('modalEliminar');
  const btnConfirmar = document.getElementById('btnConfirmarEliminar');
  const btnCancelar = document.getElementById('btnCancelarEliminar');

  let libroAEliminar = null;

  botonesEliminar.forEach(boton => {
    boton.addEventListener('click', () => {
      libroAEliminar = boton;
      modalEliminar.style.display = 'flex';
    });
  });

  btnCancelar.addEventListener('click', () => {
    modalEliminar.style.display = 'none';
    libroAEliminar = null;
  });

  btnConfirmar.addEventListener('click', () => {
    alert("Libro eliminado correctamente.");
    modalEliminar.style.display = 'none';
    libroAEliminar = null;
  });

  window.addEventListener('click', (e) => {
    if (e.target === modalEliminar) {
      modalEliminar.style.display = 'none';
    }
  });

  const homeIcon = document.querySelector('.home-icon');
  const sidebarMenu = document.getElementById('sidebarMenu');

  let sidebarVisible = false;

  homeIcon.addEventListener('click', (e) => {
    e.preventDefault();
    sidebarVisible = !sidebarVisible;
    sidebarMenu.classList.toggle('active', sidebarVisible);
  });

  window.addEventListener('click', (e) => {
    if (sidebarVisible && !sidebarMenu.contains(e.target) && !homeIcon.contains(e.target)) {
      sidebarVisible = false;
      sidebarMenu.classList.remove('active');
    }
  });

  
  const modalEditar = document.getElementById('modalEditar');
const btnGuardarCambios = document.getElementById('btnGuardarCambios');
const btnCancelarEdicion = document.getElementById('btnCancelarEdicion');

const inputsEditar = {
  isbn: document.getElementById('editarISBN'),
  titulo: document.getElementById('editarTitulo'),
  autor: document.getElementById('editarAutor'),
  editorial: document.getElementById('editarEditorial'),
  estado: document.getElementById('editarEstado')
};

let libroAEditar = null;

const botonesEditar = document.querySelectorAll('.btn-editar');

botonesEditar.forEach(boton => {
  boton.addEventListener('click', () => {
    libroAEditar = boton.closest('.libro-card');
    inputsEditar.isbn.value = "1234-12244"; 
    inputsEditar.titulo.value = libroAEditar.querySelector('h3').textContent || '';
    inputsEditar.autor.value = "Nombre del Autor";
    inputsEditar.editorial.value = "Editorial del libro"; 
    inputsEditar.estado.value = "Disponible";
    
    modalEditar.style.display = 'flex';
  });
});

btnCancelarEdicion.addEventListener('click', () => {
  modalEditar.style.display = 'none';
  libroAEditar = null;
});



btnGuardarCambios.addEventListener('click', () => {
  if (!libroAEditar) return;

  if (
    inputsEditar.isbn.value.trim() === '' ||
    inputsEditar.titulo.value.trim() === '' ||
    inputsEditar.autor.value.trim() === '' ||
    inputsEditar.editorial.value.trim() === '' ||
    inputsEditar.estado.value.trim() === ''
  ) {
    alert('Por favor, completa todos los campos antes de guardar.');
    return; 
  }

  libroAEditar.querySelector('h3').textContent = inputsEditar.titulo.value;

  alert('Cambios guardados correctamente.');
  modalEditar.style.display = 'none';
  libroAEditar = null;
});
