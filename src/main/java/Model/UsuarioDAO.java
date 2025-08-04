package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO {

    public Usuario validarUsuario(String idUsuario, String contrasena, String tipoUsuario) throws Exception {
        Usuario usuario = null;

        // Validar que el ID sea numérico
        int id;
        try {
            id = Integer.parseInt(idUsuario.trim());
        } catch (NumberFormatException e) {
            throw new Exception(" El ID de usuario debe ser un número válido.");
        }

        // Consulta SQL según el tipo de usuario
        String sql = "";
        if ("bibliotecario".equalsIgnoreCase(tipoUsuario)) {
            sql = "SELECT p.id_persona, p.nombre_completo, p.correo_electronico " +
                  "FROM persona p " +
                  "INNER JOIN bibliotecario b ON p.id_persona = b.id_persona " +
                  "WHERE p.id_persona = ? AND p.contrasena = ?";
        } else if ("estudiante".equalsIgnoreCase(tipoUsuario)) {
            sql = "SELECT p.id_persona, p.nombre_completo, p.correo_electronico " +
                  "FROM persona p " +
                  "INNER JOIN estudiante e ON p.id_persona = e.id_persona " +
                  "WHERE p.id_persona = ? AND p.contrasena = ?";
        } else {
            throw new Exception("⚠️ Tipo de usuario no válido.");
        }

        Connection con = null;
        try {
            con = conectionDataBase.conectar();

            if (con == null) {
                throw new Exception("No se pudo establecer conexión con la base de datos.");
            }

            try (PreparedStatement ps = con.prepareStatement(sql)) {
                ps.setInt(1, id);
                ps.setString(2, contrasena.trim());

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    usuario = new Usuario();
                    usuario.setIdPersona(rs.getInt("id_persona"));
                    usuario.setNombreCompleto(rs.getString("nombre_completo"));
                    usuario.setCorreoElectronico(rs.getString("correo_electronico"));
                    usuario.setTipoUsuario(tipoUsuario); // Guardar el tipo de usuario
                }
            }

        } catch (Exception e) {
            throw new Exception(" Error al validar usuario: " + e.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    
                }
            }
        }

        return usuario;
    }
}
