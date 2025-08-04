function validarFormulario() {
  const usuarioInput = document.getElementById('nombre');
  const passwordInput = document.getElementById('password');
  const tipoUsuarioSelect = document.getElementById('tipo_usuario');

  const usuario = usuarioInput.value.trim();
  const password = passwordInput.value.trim();
  const tipoUsuario = tipoUsuarioSelect.value;

  if (!usuario) {
    Swal.fire({
      icon: 'warning',
      title: 'Campo vacío',
      text: 'Por favor, ingrese el nombre de usuario.',
      confirmButtonColor: '#3085d6'
    });
    usuarioInput.focus();
    return;
  }

  if (!password) {
    Swal.fire({
      icon: 'warning',
      title: 'Campo vacío',
      text: 'Por favor, ingrese la contraseña.',
      confirmButtonColor: '#3085d6'
    });
    passwordInput.focus();
    return;
  }

  if (!tipoUsuario) {
    Swal.fire({
      icon: 'warning',
      title: 'Selección requerida',
      text: 'Por favor, seleccione el tipo de usuario.',
      confirmButtonColor: '#3085d6'
    });
    tipoUsuarioSelect.focus();
    return;
  }


  localStorage.setItem("usuario", usuario);
  localStorage.setItem("tipo_usuario", tipoUsuario);

  if (tipoUsuario === 'bibliotecario') {
    window.location.href = "Bibliotecario/inicio.html";
  } else if (tipoUsuario === 'estudiante') {
    window.location.href = "Estudiante/inicio.html";
  }
}
