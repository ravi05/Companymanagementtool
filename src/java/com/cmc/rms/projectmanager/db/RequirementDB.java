/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.db;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author A.Ranjan
 */
public class RequirementDB {
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
    public String getReqId()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from requirement where pm_id order by req_date desc");
        String id=null;
        while(rs.next())
        {
            id=rs.getString("id");
        }
        return id;
    }
    public ResultSet getReqInfoProject(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from requirement where p_id='"+id+"' order by req_date desc");
        return rs;
    }
    public void alterReqStatus(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update requirement set status='selected' where id='"+id+"'");
    }
    public ResultSet getReqInfo(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from requirement where id='"+id+"' order by req_date desc");
        return rs;
    }
        public ResultSet getReqInfoProjectAdmin(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("with u as(select * from requirement where status='selected')select * from u where p_id='"+id+"' order by req_date desc");
        return rs;
    }
        public void approveRequirement(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String pId=null;
        stmt.executeUpdate("update requirement set status='approved' where id='"+id+"'");
        rs=stmt.executeQuery("select p_id from requirement where id='"+id+"'");
        while(rs.next())
        {
            pId=rs.getString("p_id");
        }
        stmt.executeUpdate("update project set status='running'");

    }

}
