
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConexion {
     private final String URL = "jdbc:mysql://localhost:3306/"; // Ubicación de la BD.
    private final String BD = "refrescos_delta"; // Nombre de la BD.
    private final String USER = "root";
    private final String PASSWORD = "";

    private Connection conexion = null;
    
    
  public DBConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection(URL + BD, USER, PASSWORD);
            if (conexion != null) {
                System.out.println("¡Conexión Exitosa!");
            }
        }catch(ClassNotFoundException | SQLException e ){
            System.out.println("ERROR " + e);
        } //catch
    }//constructor
    
    public Connection getConexion(){
        return conexion;
    }
    public static void main(String[]args){
        DBConexion BD=new DBConexion();
    }
    
    public void cerrarConexion(){
    try {
        conexion.close();
    }catch (SQLException e){
       e.printStackTrace();
    }
    
    
    }
    
}
