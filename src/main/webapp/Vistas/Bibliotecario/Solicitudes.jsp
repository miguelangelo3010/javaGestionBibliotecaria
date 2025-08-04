<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Mis Solicitudes - Sistema Bibliotecario</title>
  <link rel="stylesheet" href="../styles.css" />
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
  <div class="background-overlay"></div>
  <div class="contenido">
    <header>
      <a href="#" class="home-icon">
        <img src="../../img/list.png" alt="Inicio" />
      </a>
      <h1>Sistema de Gestión Bibliotecaria Institución Educativa X</h1>
    </header>

    <div id="sidebarMenu" class="sidebar-menu">
      <ul>
            <li><a href="inicio.html"><i class="fas fa-home"></i><span>Inicio</span></a></li>
            <li><a href="registrarLibro.html"><i class="fas fa-plus-circle"></i><span>Registrar Libros</span></a></li>
            <li><a href="mostrarLibros.html"><i class="fas fa-book-open"></i><span>Mostrar Libros</span></a></li>
            <li><a href="librosPrestados.html"><i class="fas fa-book-reader"></i><span>Libros Prestados</span></a></li>
            <li><a href="Solicitudes.html"><i class="fas fa-envelope-open-text"></i><span>Solicitudes</span></a></li>
            <li><a href="editardatos.html"><i class="fas fa-user-cog"></i><span>Datos Personales</span></a></li>
            <li><a href="../inicioSesion.html"><i class="fas fa-sign-out-alt"></i><span>Salir</span></a></li>
      </ul>
    </div>

    <main>
      <div class="form-container-editar">
        <h2>Solicitudes de Libros</h2>
<div class="table-container">
  <table class="solicitudes-tabla">
    <thead>
      <tr>
        <th>Estudiante</th>
        <th>Grado</th>
        <th>Libro</th>
        <th>Fecha de Solicitud</th>
        <th>Acciones</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Juan Pérez</td>
        <td>10°</td>
        <td>El Principito</td>
        <td>2025-06-05</td>
        <td>
          <button class="btn-aprobar">Aprobar</button>
          <button class="btn-rechazar">Rechazar</button>
        </td>
      </tr>
      <tr>
        <td>María Gómez</td>
        <td>9°</td>
        <td>Cien Años de Soledad</td>
        <td>2025-06-07</td>
        <td>
          <button class="btn-aprobar">Aprobar</button>
          <button class="btn-rechazar">Rechazar</button>
        </td>
      </tr>
      <tr>
        <td>Andrés Ruiz</td>
        <td>11°</td>
        <td>1984</td>
        <td>2025-06-08</td>
        <td>
          <button class="btn-aprobar">Aprobar</button>
          <button class="btn-rechazar">Rechazar</button>
        </td>
      </tr>
    </tbody>
  </table>
</div>

      </div>
    </main>

    <footer>
      <p>Leer es soñar con los ojos abiertos y descubrir mundos sin moverse del lugar.</p>
    </footer>
  </div>

      <script src="../js/solicitudes.js"></script>
</body>

</html>
