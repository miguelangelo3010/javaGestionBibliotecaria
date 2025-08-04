<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Sistema Bibliotecario</title>
    <link rel="stylesheet" href="../styles.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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
            <div class="form-container">
                <h2>Registrar libro</h2>
                <form action="mostrarLibros.html" method="get">
                    <label for="ISBN">ISBN</label>
                    <input type="text" id="isbn" name="isbn" placeholder="Ingrese el ISBN del libro">

                    <label for="titulo">Título</label>
                    <input type="text" id="titulo" name="titulo" placeholder="Ingrese el título del libro">

                    <label for="autor">Autor</label>
                    <input type="text" id="autor" name="autor" placeholder="Ingrese el autor del libro">

                    <label for="editorial">Editorial</label>
                    <input type="text" id="editorial" name="editorial" placeholder="Ingrese el editorial del libro">

                    <label for="rol">Estado</label>
                    <select id="rol" name="rol">
                        <option value="">Seleccionar</option>
                        <option value="prestado">Prestado</option>
                        <option value="disponible">Disponible</option>
                        <option value="ocupado">Ocupado</option>
                    </select>
                    <button>Registrar</button>
                </form>
            </div>
        </main>

        <footer>
            <p>Leer es soñar con los ojos abiertos y descubrir mundos sin moverse del lugar.</p>
        </footer>
    </div>
    <script src="../js/registrarLibro.js"></script>
</body>
