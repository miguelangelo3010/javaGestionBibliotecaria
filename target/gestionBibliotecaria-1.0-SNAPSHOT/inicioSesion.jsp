<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio de Sesión - Sistema Bibliotecario</title>
        <link rel="stylesheet" href="styles.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <div class="background-overlay"></div>
        <div class="contenido">
            <header>
                <h1>Sistema de Gestión Bibliotecaria Institución Educativa X</h1>
            </header>

            <main>
                <div class="form-container">
                    <h2>Inicia Sesión</h2>

                    <form action="LoginServlet" method="post">
                        <p class="login-link">
                            ¿Aún no estás registrado? <br>
                            <a href="registro.jsp">Regístrate</a>
                        </p>
                        <br>

                        <label for="nombre">ID Usuario</label>
                        <input type="text" id="nombre" name="nombre" placeholder="Ingrese su ID" required>

                        <br>

                        <label for="password">Contraseña</label>
                        <input type="password" id="password" name="password" placeholder="********" required>

                        <label for="tipo_usuario">¿Qué tipo de usuario es usted?</label>
                        <br>
                        <select name="tipo_usuario" id="tipo_usuario" required>
                            <option value="">Seleccione una opción</option>
                            <option value="bibliotecario">Bibliotecario</option>
                            <option value="estudiante">Estudiante</option>
                        </select>

                        <button type="submit">Iniciar Sesión</button>
                        <br><br>

                        <p class="login-link">
                            <a href="recuperarContraseña.jsp">He olvidado mi contraseña</a>
                        </p>
                        <br>
                    </form>

                </div>
            </main>

            <footer>
                <p>Leer es soñar con los ojos abiertos y descubrir mundos sin moverse del lugar.</p>
            </footer>
        </div>
    <%
        Boolean mostrarModal = (Boolean) request.getAttribute("mostrarModal");
        String mensajeError = (String) request.getAttribute("mensaje");
    %>
    
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        <% if (mostrarModal != null && mostrarModal) { %>
            Swal.fire({
                icon: 'error',
                title: '¡Error!',
                text: '<%= mensajeError %>',
                confirmButtonColor: '#d33',
                confirmButtonText: 'Aceptar'
            });
        <% } %>
        });
    </script>
    </body>
</html>
