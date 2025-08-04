<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de SesiÃ³n - Sistema Bibliotecario</title>
    <link rel="stylesheet" href="../../styles.css">
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
            <li><a href="inicio.jsp"><i class="fas fa-home"></i><span>Inicio</span></a></li>
            <li><a href="editardatos.jsp"><i class="fas fa-id-card"></i><span>Datos Personales</span></a></li>
            <li><a href="${pageContext.request.contextPath}/LibroServlet">
                    <i class="fas fa-book"></i><span>Solicitar Libro</span>
                </a>
            </li>

            <li><a href="misSolicitudes.jsp"><i class="fas fa-tasks"></i><span>Mis Solicitudes</span></a></li>
            <li><a href="../../inicioSesion.jsp"><i class="fas fa-sign-out-alt"></i><span>Salir</span></a></li>

          </ul>
        </div>
        <div class="bienvenida">
            <h2>
                Bienvenido 
                <%= (session.getAttribute("tipoUsuario") != null ? session.getAttribute("tipoUsuario") : "") %> 
                <%= (session.getAttribute("usuarioNombre") != null ? session.getAttribute("usuarioNombre") : "Invitado") %>
            </h2>
            <p>Este sistema te permite realizar una gestiÃ³n bibliotecaria de una manera satisfactoria</p>

        </div>
        
        <main>
        <div class="dashboard">
            <div class="card">
                <h2> Libros Registrados</h2>
                <p>128</p>
            </div>
            <div class="card">
                <h2> Libros Prestados en este mes</h2>
                <p>10</p>
            </div>
            <div class="card">
                <h2> Libros pendientes de devolver</h2>
                <p>2</p>
            </div>
            </div>            
          
        
        </main>

        <footer>
            <p>Leer es soÃ±ar con los ojos abiertos y descubrir mundos sin moverse del lugar.</p>
        </footer>
    </div>


    <script src="../../js/inicio.js"></script>

</body>