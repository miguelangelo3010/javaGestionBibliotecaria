<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión - Sistema Bibliotecario</title>
    <link rel="stylesheet" href="../styles.css">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
  />
</head>
<body>
    
    <div class="background-overlay"></div>
    <div class="contenido">
        <header>
            <a href="#" class="home-icon">
                <img src="../../img/list.png" alt="Inicio">
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
            <div class="contenedor">
                <div class="titulo">Libros Prestados</div>
                <div class="tabla-scroll">
                  <table>
                    <thead>
                      <tr>
                        <th>Código Libro</th>
                        <th>Usuario</th>
                        <th>Fecha de Préstamo</th>
                        <th>Fecha de devolución</th>
                        <th>Estado del Libro</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>001</td>
                        <td>Usuario1</td>
                        <td>6/04/2025</td>
                        <td>10/04/2025</td>
                        <td><span class="estado">Prestado</span></td>
                      </tr>
                      <tr>
                        <td>002</td>
                        <td>Usuario2</td>
                        <td>6/04/2025</td>
                        <td>12/04/2025</td>
                        <td><span class="estado">Prestado</span></td>
                      </tr>
                      <tr>
                        <td>003</td>
                        <td>Usuario3</td>
                        <td>6/04/2025</td>
                        <td>11/04/2025</td>
                        <td><span class="estado">Prestado</span></td>
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
<script src="../js/librosPrestados.js"></script>
</body>
