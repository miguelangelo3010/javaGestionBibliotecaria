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
            <li><a href="inicio.jsp"><i class="fas fa-home"></i><span>Inicio</span></a></li>
            <li><a href="editardatos.jsp"><i class="fas fa-id-card"></i><span>Datos Personales</span></a></li>
            <li><a href="mostrarLibros.jsp"><i class="fas fa-book"></i><span>Solicitar Libro</span></a></li>
            <li><a href="misSolicitudes.jsp"><i class="fas fa-tasks"></i><span>Mis Solicitudes</span></a></li>
            <li><a href="../../inicioSesion.jsp"><i class="fas fa-sign-out-alt"></i><span>Salir</span></a></li>
      </ul>
    </div>

    <main>
      <div class="form-container-editar">
        <h2>Mis Solicitudes de Libros</h2>
        <div class="table-container">
          <table class="solicitudes-tabla">
            <thead>
              <tr>
                <th>Libro</th>
                <th>Fecha de Solicitud</th>
                <th>Estado</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>El Principito</td>
                <td>2025-06-05</td>
                <td><span class="estado aprobado">Aprobada</span></td>
              </tr>
              <tr>
                <td>Cien Años de Soledad</td>
                <td>2025-06-07</td>
                <td><span class="estado pendiente">Pendiente</span></td>
              </tr>
              <tr>
                <td>1984</td>
                <td>2025-06-08</td>
                <td><span class="estado rechazada">Rechazada</span></td>
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

  <style>
    .table-container {
      overflow-x: auto;
    }

    .solicitudes-tabla {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    .solicitudes-tabla th,
    .solicitudes-tabla td {
      border: 1px solid #ccc;
      padding: 10px;
      text-align: center;
    }

    .estado {
      padding: 5px 10px;
      border-radius: 5px;
      color: white;
      font-weight: bold;
    }

    .estado.aprobado {
      background-color: #28a745;
    }

    .estado.pendiente {
      background-color: #ffc107;
      color: #000;
    }

    .estado.rechazada {
      background-color: #dc3545;
    }
  </style>
      <script src="../js/misSolicitudes.js"></script>
</body>

</html>
