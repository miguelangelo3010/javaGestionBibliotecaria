  //Menu
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


function validarEdicion() {
    const nombre = document.getElementById('nombre').value.trim();
    const celular = document.getElementById('celular').value.trim();
    const email = document.getElementById('email').value.trim();
    const foto = document.getElementById('foto').files[0];

    if (!nombre || !celular || !email || !foto) {
      Swal.fire({
        icon: 'warning',
        title: 'Campos incompletos',
        text: 'Por favor completa todos los campos antes de continuar.',
        confirmButtonColor: '#3085d6'
      });
      return false; 
    }

    Swal.fire({
      icon: 'success',
      title: 'Datos actualizados',
      text: 'Tus datos personales se han editado correctamente.',
      confirmButtonColor: '#3085d6'
    });


    return false;
  }