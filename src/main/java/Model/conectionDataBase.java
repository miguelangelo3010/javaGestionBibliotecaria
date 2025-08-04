package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conectionDataBase {
    private static final String URL = "jdbc:mysql://localhost:3306/biblioteca_db?useSSL=false&serverTimezone=UTC";
    private static final String USUARIO = "root";
    private static final String CONTRASEÑA = "root";

    public static Connection conectar() throws Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conexion = DriverManager.getConnection(URL, USUARIO, CONTRASEÑA);
            return conexion;
        } catch (ClassNotFoundException e) {
            throw new Exception("No se encontró el driver JDBC de MySQL: " + e.getMessage());
        } catch (SQLException e) {
            throw new Exception("Error de conexión a MySQL: " + e.getMessage());
        }
    }
}

