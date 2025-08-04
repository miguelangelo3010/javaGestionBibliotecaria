package Controller;

import Model.Usuario;
import Model.UsuarioDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String idUsuario = request.getParameter("nombre");
        String password = request.getParameter("password");
        String tipoUsuario = request.getParameter("tipo_usuario");

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuario = null;

        try {
            usuario = usuarioDAO.validarUsuario(idUsuario, password, tipoUsuario);

            if (usuario != null) {
                // ✅ Guardar datos en sesión
                HttpSession session = request.getSession();
                session.setAttribute("usuarioNombre", usuario.getNombreCompleto());
                session.setAttribute("tipoUsuario", tipoUsuario);

                // Redirigir según el tipo de usuario
                if ("bibliotecario".equalsIgnoreCase(tipoUsuario)) {
                    response.sendRedirect("Vistas/Bibliotecario/inicio.jsp");
                } else {
                    response.sendRedirect("Vistas/Estudiante/inicio.jsp");
                }
            } else {
                request.setAttribute("mostrarModal", true);
                request.setAttribute("mensaje", "Datos Incorrectos");
                request.getRequestDispatcher("inicioSesion.jsp").forward(request, response);
            }

        } catch (Exception e) {
            request.setAttribute("mostrarModal", true);
            request.setAttribute("mensaje", " Error en el login: " + e.getMessage());
            request.getRequestDispatcher("inicioSesion.jsp").forward(request, response);
        }
    }
}
