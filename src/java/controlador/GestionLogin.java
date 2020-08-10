package controlador;

import conexion.DBConexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GestionLogin extends DBConexion{
    String sql;
    
    public GestionLogin(){
        super();
    }
    
    public boolean buscarUsuario(String usuario, String contra){
        boolean b = false;
        sql = "SELECT * FROM iniciar_sesion WHERE usuario=? AND contrasena=?";
        try{
             PreparedStatement consulta = getConexion().prepareStatement(sql);
            consulta.setString(1, usuario);
            consulta.setString(2, contra);
            
            ResultSet rs = consulta.executeQuery();

            if (rs.next()) {
                b = true;
            }
        } catch (SQLException e){
            System.out.println("error" + e);
        } //catch
        return b;
    } //boolean
    
    public static void main(String [] args){
        GestionLogin g = new GestionLogin();
        if (g.buscarUsuario("Roberto", "Roberto123")){
            System.out.println("Si existe");
        } else {
            System.out.println("No existe");
        }
    } //main
}
