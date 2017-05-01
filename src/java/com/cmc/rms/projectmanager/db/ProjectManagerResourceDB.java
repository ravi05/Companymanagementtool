/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.db;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author Tonyw@rringle
 */
public class ProjectManagerResourceDB {

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

    public ResultSet getResult()throws SQLException {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String querry="select * from project";
            rs=stmt.executeQuery(querry);

return rs;
}

}

