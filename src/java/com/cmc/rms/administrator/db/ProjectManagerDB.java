/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.db;
import java.sql.*;

/**
 *
 * @author A.Ranjan
 */
public class ProjectManagerDB {
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
    public ResultSet getPmInfo()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from employee where post='Project Manager'");
        return rs;
    }
    public int getNumbers(String id)throws SQLException
    {
        int i=0;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from project where pm_id='"+id+"'");
        while(rs.next())
        {
                i++;
            
        }

        return i;

    }
    public int getNumbersDone(String id)throws SQLException
    {
        int i=0;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from project where status='finished'");
        while(rs.next())
        {
            if(rs.getString("pm_id").equals(id))
            {
                i++;
            }
        }
          
        return i;
        
    }
    public String getPmName(String id)throws SQLException
    {
        String name=null;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select name from login where id='"+id+"'");
        while(rs.next())
        {
            name=rs.getString("name");
        }

        return name;
    }
}
