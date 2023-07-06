/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;
import java.sql.*;

/**
 *
 * @author ITAdmin
 */
public class koneksi {
    private Connection koneksi;
    public Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("berhasil koneksi");
        }
        catch(ClassNotFoundException ex){
            System.out.println("Gagal koneksi "+ex);
        }
        String url = "jdbc:mysql://localhost/dbinventory";
        try{
            koneksi = DriverManager.getConnection(url,"root","");
            System.out.println("Berhasil koneksi database");
        }
        catch(SQLException ex){
            System.out.println("Gagal koneksi database"+ex);
        }
        return koneksi;
    }
}
