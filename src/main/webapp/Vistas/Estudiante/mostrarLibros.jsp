<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.Libro" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Libros en Biblioteca - Sistema Bibliotecario</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles.css">


    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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
                <img src="${pageContext.request.contextPath}/img/list.png" alt="Inicio">
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
            <div class="contenedor-principal">
                <h1>Libros en Biblioteca</h1>
                <div class="buscador">
                    <input type="text" placeholder="Buscar...">
                    <button><i class="fas fa-search"></i></button>
                </div>

                <div class="libros-grid">
                    <%
                        List<Libro> libros = (List<Libro>) request.getAttribute("listaLibros");
                        if (libros != null && !libros.isEmpty()) {
                            for (Libro libro : libros) {
                    %>
                        <div class="libro-card">
                            <h3><%= libro.getTitulo() %></h3>
                            <img src="../../img/libro.png" alt="Libro">
                            <p><strong>Autor:</strong> <%= libro.getAutor() %></p>
                            <p><strong>Editorial:</strong> <%= libro.getEditorial() %></p>
                            <p><strong>ISBN:</strong> <%= libro.getIsbn() %></p>
                            <div class="acciones">
                                <button class="btn-solicitar">Solicitar Libro</button>
                            </div>
                            <button class="btn-ampliar"><i class="fas fa-expand-alt"></i></button>
                        </div>
                    <%
                            }
                        } else {
                    %>
                        <p>No hay libros disponibles en este momento.</p>
                    <%
                        }
                    %>
                </div>
            </div>
        </main>

        <footer>
            <p>Leer es soñar con los ojos abiertos y descubrir mundos sin moverse del lugar.</p>
        </footer>
    </div>

    <!-- Modal para información de libro -->
    <div id="modalInfo" class="modal">
        <div class="modal-contenido">
            <h2>Información</h2>
            <label>ISBN</label>
            <input type="text" id="isbnInfo" readonly>
            
            <label>TÍTULO</label>
            <input type="text" id="tituloInfo" readonly>
            
            <label>AUTOR</label>
            <input type="text" id="autorInfo" readonly>
            
            <label>EDITORIAL</label>
            <input type="text" id="editorialInfo" readonly>
            
            <label>ESTADO</label>
            <select disabled>
                <option>Estado del Libro</option>
            </select>
            
            <button class="cerrar-modal">Cerrar</button>
        </div>
    </div>

    <!-- Modal para solicitud de libro -->
    <div id="modalSolicitud" class="modal">
        <div class="modal-contenido">
            <h2>Solicitud de Préstamo</h2>
            <form id="formSolicitud">
                <label>Nombre del Libro</label>
                <input type="text" id="nombreLibro" readonly>

                <label>Fecha de Solicitud</label>
                <input type="date" id="fechaSolicitud" required>

                <label>¿Cuántos días desea tener el libro?</label>
                <select id="diasPrestamo" required>
                    <option value="">Seleccione...</option>
                    <option value="2">2 días</option>
                    <option value="4">4 días</option>
                    <option value="5">5 días</option>
                </select>

                <div style="margin-top: 1rem;">
                    <button type="submit">Enviar Solicitud</button>
                    <button type="button" class="cerrar-modal">Cancelar</button>
                </div>
            </form>
        </div>
    </div>
    <%
    String mensaje = (String) request.getAttribute("mensaje");
    if (mensaje != null) {
%>
    <div class="alerta-error"><%= mensaje %></div>
<%
    }
%>


    <script src="${pageContext.request.contextPath}/js/mostrarLibrosEst.js"></script>
</body>
</html>
