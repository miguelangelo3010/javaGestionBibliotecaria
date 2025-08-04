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

  document.getElementById("modalSolicitud").style.display = "none";
  document.getElementById("modalInfo").style.display = "none";

  document.addEventListener("DOMContentLoaded", () => {
    const botonesSolicitar = document.querySelectorAll(".btn-solicitar");
    const modal = document.getElementById("modalSolicitud");
    const form = document.getElementById("formSolicitud");
    const nombreLibroInput = document.getElementById("nombreLibro");
    const fechaSolicitudInput = document.getElementById("fechaSolicitud");
    const diasPrestamoSelect = document.getElementById("diasPrestamo");

    let libroActual = "";

    // Abre el modal y carga el nombre del libro
    botonesSolicitar.forEach(btn => {
      btn.addEventListener("click", (e) => {
        const titulo = e.target.closest(".libro-card").querySelector("h3").textContent;
        libroActual = titulo;
        nombreLibroInput.value = titulo;
        fechaSolicitudInput.value = "";
        diasPrestamoSelect.value = "";
        modal.style.display = "block";
      });
    });

    // Cierra el modal
    document.querySelectorAll(".cerrar-modal").forEach(btn => {
      btn.addEventListener("click", () => {
        modal.style.display = "none";
      });
    });

    // Envía el formulario con validación y confirmación
    form.addEventListener("submit", async (e) => {
      e.preventDefault();

      const fechaSolicitud = new Date(fechaSolicitudInput.value);
      const dias = parseInt(diasPrestamoSelect.value);

      if (!fechaSolicitudInput.value) {
        Swal.fire({
          icon: 'warning',
          title: 'Fecha requerida',
          text: 'Por favor, seleccione la fecha de solicitud.',
          confirmButtonColor: '#3085d6'
        });
        fechaSolicitudInput.focus();
        return;
      }

      if (!dias) {
        Swal.fire({
          icon: 'warning',
          title: 'Días requeridos',
          text: 'Por favor, seleccione por cuántos días desea el libro.',
          confirmButtonColor: '#3085d6'
        });
        diasPrestamoSelect.focus();
        return;
      }

      const fechaDevolucion = new Date(fechaSolicitud);
      fechaDevolucion.setDate(fechaDevolucion.getDate() + dias);

      const formatoFecha = (fecha) => fecha.toISOString().split('T')[0];

      const confirmacion = await Swal.fire({
        icon: 'question',
        title: '¿Desea confirmar la solicitud?',
        html: `
          <p><strong>Libro:</strong> ${libroActual}</p>
          <p><strong>Fecha de solicitud:</strong> ${formatoFecha(fechaSolicitud)}</p>
          <p><strong>Fecha de devolución:</strong> ${formatoFecha(fechaDevolucion)}</p>
        `,
        showCancelButton: true,
        confirmButtonText: 'Sí, solicitar',
        cancelButtonText: 'Cancelar',
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33'
      });

      if (confirmacion.isConfirmed) {
        Swal.fire({
          icon: 'success',
          title: '¡Solicitud enviada!',
          text: 'Tu solicitud ha sido registrada exitosamente.',
          confirmButtonColor: '#3085d6'
        });
        modal.style.display = "none";
      }
    });
  });

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
