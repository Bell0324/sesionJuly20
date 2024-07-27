/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexionbd;

import controllers.Conexion;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author usuario
 */
public class ConexionBD {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Conexion conexion = new Conexion();
        Connection conn = conexion.obtenerConexion();
        
        try {
            PreparedStatement ps = 
                conn.prepareStatement("select * from ciudades");
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                System.out.println("Conexion");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
   
    }
    
}
