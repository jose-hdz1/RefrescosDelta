package controlador;

import conexion.DBConexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GestionRegistro extends DBConexion{
    String sql;
    public GestionRegistro(){
        super();
    }
    public boolean altaCodigo(RegistroCod rc) throws SQLException{
        boolean b = false;
        sql = "INSERT INTO  registrar_puntos (codigo) VALUE (?)";
        DBConexion c = new DBConexion();
        try{
            PreparedStatement alta = c.getConexion().prepareStatement(sql);
            alta.setString(1, rc.getCodigo());
            alta.executeUpdate();
            b = true;
            getConexion().close();
        } catch(SQLException e){
            System.out.println("Error" + e);
        }
        return b;
    } //altaCodigo
    
    public static void main(String [] args){
        GestionRegistro gr = new GestionRegistro();
        RegistroCod r = new RegistroCod();
        r.setCodigo("C12457832");
        try {
            if(gr.altaCodigo(r)){
                System.out.println("Alta");
            } else{
                System.out.println("Código Invalido");
            }
        } catch (SQLException ex) {
            Logger.getLogger(GestionRegistro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
