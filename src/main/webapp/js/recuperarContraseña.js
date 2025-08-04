
  function enviarRecuperacion() {
    const correo = document.getElementById('correoRecuperar').value.trim();

    if (!correo) {
      Swal.fire({
        icon: 'warning',
        title: 'Campo vacío',
        text: 'Por favor ingrese su correo electrónico.',
        confirmButtonColor: '#3085d6'
      });
      return false;
    }

    Swal.fire({
      icon: 'success',
      title: 'Correo enviado',
      html: `La contraseña ha sido enviada correctamente al correo: <strong>${correo}</strong>.`,
      confirmButtonText: 'Aceptar',
      confirmButtonColor: '#3085d6'
    }).then((result) => {
      if (result.isConfirmed) {
        window.location.href = 'inicioSesion.html';
      }
    });

    document.getElementById('formRecuperar').reset();
    return false;
  }
