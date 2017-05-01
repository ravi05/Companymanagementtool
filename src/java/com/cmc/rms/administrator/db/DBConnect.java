    /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.db;

/**
 *
 * @author Tonyw@rringle
 */
import java.sql.*;

public class DBConnect {

    static Connection con = null;
    String result;

    public static Connection getConnection() {

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            DriverManager.registerDriver(new oracle.jdbc.OracleDriver());//optional but sometimes required when getting prob. to connection.
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");

        }
//        catch(Exception e){
//            e.printStackTrace();
//        }
            catch (ClassNotFoundException cnf) {
            cnf.printStackTrace();
        } catch (SQLException sq) {
            sq.printStackTrace();
        }
        if (con == null) {
            try {
                con.close();
            } catch (SQLException sq) {
                sq.printStackTrace();
            }
        }
        return con;
    }
}
