package Controller;

import Model.Libro;
import Model.LibroDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/LibroServlet")
public class LibroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            LibroDAO libroDAO = new LibroDAO();
            List<Libro> listaLibros = libroDAO.obtenerLibros();

            request.setAttribute("listaLibros", listaLibros);
            request.getRequestDispatcher("Vistas/Estudiante/mostrarLibros.jsp").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("mensaje", "Error al cargar los libros: " + e.getMessage());
            request.getRequestDispatcher("Vistas/Estudiante/mostrarLibros.jsp").forward(request, response);
        }
    }
}
