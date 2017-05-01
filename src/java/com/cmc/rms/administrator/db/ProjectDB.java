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
public class ProjectDB {
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
    public ResultSet getUnassignedProjects()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from project where status='unassigned'");
        return rs;

    }
    public String getCompany(String id)throws SQLException
    {
        String cname=null;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select company_name from client where c_id='"+id+"'");
        while(rs.next())
        {
            cname=rs.getString(1);
        }
            return cname;
   }

    public String getClient(String id)throws SQLException
    {
        String cname=null;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select c_name from client where c_id='"+id+"'");
        while(rs.next())
        {
            cname=rs.getString(1);
        }
        return cname;
    }
    public String getEndDate(String id)throws SQLException
    {
        String endDate=null;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select end_date from client where c_id='"+id+"'");
        while(rs.next())
        {
            endDate=rs.getString(1);
        }
        return endDate;
    }
    public void updateProject(String id,String p_id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update project set status='assigned' where p_id='"+p_id+"'");
        stmt.executeUpdate("update project set pm_id='"+id+"' where p_id='"+p_id+"'");

    }
    public ResultSet getProjectDetail(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("with u as(select * from project where pm_id='"+id+"')select * from u where technology in('NA')");
        return rs;
    }
       public ResultSet getProjectDetailInfo(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("with u as(select * from project where pm_id='"+id+"')select * from u where technology not in('NA')");
        return rs;
    }

    public ResultSet getClientInfo(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from client where c_id='"+id+"'");
        return rs;
    }
    public String getProName(String id)throws SQLException
    {
        String name=null;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select p_name from project where p_id='"+id+"'");
        while(rs.next())
        {
            name=rs.getString("p_name");
        }
        return name;

    }
    public ResultSet getProjectAdmin()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from project where status='assigned'");
        return rs;
    }
    public ResultSet getProjectRunning(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("with u as(select * from project where pm_id='"+id+"')select * from u where status='running'");
        return rs;
    }
    public void finalizeProject(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update project set status=finished,end_date=to_date(sysdate,'dd/mm/yy') where p_id='"+id+"'");
    }
    public ResultSet getProjectRequest(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from project where p_id in(select distinct p_id from requirement where pm_id='"+id+"')");
        return rs;
    }
    public ResultSet getAdminRequestProject()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from project where p_id in(select distinct p_id from requirement where status='selected')");
        return rs;
    }
    public ResultSet getAssignedProject()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from project where status='assigned'");
        return rs;
    }




}
