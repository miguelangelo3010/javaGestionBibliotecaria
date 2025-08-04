    const form = document.getElementById('registroForm');

    form.addEventListener('submit', function (event) {
      event.preventDefault();

      const nombre = document.getElementById('nombre');
      const email = document.getElementById('email');
      const password = document.getElementById('password');
      const rol = document.getElementById('rol');

      if (!nombre.value.trim()) {
        Swal.fire({
          icon: 'warning',
          title: 'Campo vacío',
          text: 'Por favor, ingrese su nombre.',
          confirmButtonColor: '#3085d6'
        });
        nombre.focus();
        return;
      }

      if (!email.value.trim()) {
        Swal.fire({
          icon: 'warning',
          title: 'Campo vacío',
          text: 'Por favor, ingrese su correo electrónico.',
          confirmButtonColor: '#3085d6'
        });
        email.focus();
        return;
      }

      if (!password.value.trim()) {
        Swal.fire({
          icon: 'warning',
          title: 'Campo vacío',
          text: 'Por favor, ingrese una contraseña.',
          confirmButtonColor: '#3085d6'
        });
        password.focus();
        return;
      }

      if (!rol.value.trim()) {
        Swal.fire({
          icon: 'warning',
          title: 'Campo vacío',
          text: 'Por favor, seleccione un rol.',
          confirmButtonColor: '#3085d6'
        });
        rol.focus();
        return;
      }

      Swal.fire({
        icon: 'success',
        title: 'Registro exitoso',
        text: 'Te has registrado correctamente.',
        confirmButtonText: 'Aceptar',
        confirmButtonColor: '#3085d6'
      }).then((result) => {
        if (result.isConfirmed) {
          form.submit(); 
        }
      });
    });