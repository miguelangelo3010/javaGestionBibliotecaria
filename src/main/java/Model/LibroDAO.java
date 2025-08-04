package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LibroDAO {

    public List<Libro> obtenerLibros() throws Exception {
        List<Libro> listaLibros = new ArrayList<>();

        String sql = "SELECT id_libro, isbn, titulo, autor, editorial FROM libro";

        try (Connection con = conectionDataBase.conectar();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Libro libro = new Libro();
                libro.setIdLibro(rs.getInt("id_libro"));
                libro.setIsbn(rs.getString("isbn"));
                libro.setTitulo(rs.getString("titulo"));
                libro.setAutor(rs.getString("autor"));
                libro.setEditorial(rs.getString("editorial"));

                listaLibros.add(libro);
            }

        } catch (Exception e) {
            throw new Exception("⚠️ Error al obtener los libros: " + e.getMessage());
        }

        return listaLibros;
    }
}
