/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.client.db;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author A.Ranjan
 */
public class ClientDB {
    
    Connection con=null;
    ResultSet rs=null;
    Statement stmt=null;

    public ResultSet getNewOrders()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("Select * from client where status='NA'");
        return rs;
    }
    public void actionOrders(String status,String ClientId) throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();

        if(status.equals("select"))
        {
            stmt.executeUpdate("update client set status='approved' where C_ID='"+ClientId+"'");
            rs=stmt.executeQuery("select p_name from client where C_ID='"+ClientId+"'");
            String proName=null;
            while(rs.next())
            {
                proName=rs.getString(1);
            }
            stmt.executeUpdate("insert into project values('"+ClientId+"','P00'||ABC.nextval,'"+proName+"','','NA','NA','unassigned','','')");
        }
        else if (status.equals("reject"))
        {
            stmt.executeUpdate("update client set status='rejected' where C_ID='"+ClientId+"'");
        }

    }
}
