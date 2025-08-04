<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión - Sistema Bibliotecario</title>
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
            <li><a href="inicio.jsp"><i class="fas fa-home"></i><span>Inicio</span></a></li>
            <li><a href="editardatos.jsp"><i class="fas fa-id-card"></i><span>Datos Personales</span></a></li>
            <li><a href="mostrarLibros.jsp"><i class="fas fa-book"></i><span>Solicitar Libro</span></a></li>
            <li><a href="misSolicitudes.jsp"><i class="fas fa-tasks"></i><span>Mis Solicitudes</span></a></li>
            <li><a href="../../inicioSesion.jsp"><i class="fas fa-sign-out-alt"></i><span>Salir</span></a></li>
            </ul>
        </div>
        <main>
            <div class="form-container-editar">
                <h2>Editar Datos Personales</h2>
                <form id="formEditar" class="grid-form" onsubmit="return validarEdicion()">

                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" id="nombre" name="nombre" placeholder="Ingrese tu nombre">
                    </div>

                    <div class="form-group">
                        <label for="celular">Celular</label>
                        <input type="number" id="celular" name="celular" placeholder="Escribe tu nuevo celular">
                    </div>

                    <div class="form-group">
                        <label for="foto">Foto de Perfil</label>
                        <div class="form-group-img">

                            <img id="preview-foto" src="../../img/usuario.png" alt="Foto de perfil" class="foto-perfil">

                            <input type="file" id="foto" name="foto" accept="image/*">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email">Correo Electrónico</label>
                        <input type="email" id="email" name="email">
                    </div>

                    <div class="form-actions" style="grid-column: span 2; text-align: center;">
                        <button type="submit">Editar datos</button>
                    </div>
                </form>
            </div>

        </main>

        <footer>
            <p>Leer es soñar con los ojos abiertos y descubrir mundos sin moverse del lugar.</p>
        </footer>
    </div>
    <script src="../js/editarDatos.js"></script>
</body>
