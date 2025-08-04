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
 
 
 const form = document.querySelector('form');

  form.addEventListener('submit', function(event) {
    event.preventDefault();

    const isbn = document.getElementById('isbn');
    const titulo = document.getElementById('titulo');
    const autor = document.getElementById('autor');
    const editorial = document.getElementById('editorial');
    const estado = document.getElementById('rol');

    if (!isbn.value.trim()) {
      Swal.fire({
        icon: 'warning',
        title: 'Campo vacío',
        text: 'Por favor, ingrese el ISBN del libro.',
        confirmButtonColor: '#3085d6'
      });
      isbn.focus();
      return;
    }

    if (!titulo.value.trim()) {
      Swal.fire({
        icon: 'warning',
        title: 'Campo vacío',
        text: 'Por favor, ingrese el título del libro.',
        confirmButtonColor: '#3085d6'
      });
      titulo.focus();
      return;
    }

    if (!autor.value.trim()) {
      Swal.fire({
        icon: 'warning',
        title: 'Campo vacío',
        text: 'Por favor, ingrese el autor del libro.',
        confirmButtonColor: '#3085d6'
      });
      autor.focus();
      return;
    }

    if (!editorial.value.trim()) {
      Swal.fire({
        icon: 'warning',
        title: 'Campo vacío',
        text: 'Por favor, ingrese la editorial del libro.',
        confirmButtonColor: '#3085d6'
      });
      editorial.focus();
      return;
    }

    if (!estado.value.trim()) {
      Swal.fire({
        icon: 'warning',
        title: 'Campo vacío',
        text: 'Por favor, seleccione el estado del libro.',
        confirmButtonColor: '#3085d6'
      });
      estado.focus();
      return;
    }

    Swal.fire({
      icon: 'success',
      title: 'Libro registrado correctamente',
      text: 'El libro se ha registrado con éxito.',
      confirmButtonText: 'Aceptar',
      confirmButtonColor: '#3085d6'
    }).then((result) => {
      if (result.isConfirmed) {
        form.submit();
      }
    });
  });
