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

// coloca el nombre del usuario
document.addEventListener("DOMContentLoaded", () => {
    const nombreUsuario = localStorage.getItem("usuario");
    const tipoUsuario = localStorage.getItem("tipo_usuario");

    const bienvenida = document.querySelector(".bienvenida h2");

    if (nombreUsuario && bienvenida) {
        bienvenida.textContent = `Bienvenid@ ${tipoUsuario}   ${nombreUsuario}`;
    }
});
// borra el nombre de usuario al cerrar sesion
document.addEventListener("DOMContentLoaded", () => {
    const salirLink = document.querySelector('a[href="inicioSesion.html"]');

    if (salirLink) {
        salirLink.addEventListener("click", () => {
            localStorage.removeItem("usuario");
        });
    }
});
