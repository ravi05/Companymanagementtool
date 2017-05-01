/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.db;
//import com.cmc.rms.administrator.db.DBConnect;
import java.sql.*;
/**
 *
 * @author Tonyw@rringle
 */
public class NewsDB {

    Connection con=null;
    ResultSet rs=null;
    Statement stmt=null;

    public ResultSet getNews()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("Select * from newstable");
        return rs;
    }

}
