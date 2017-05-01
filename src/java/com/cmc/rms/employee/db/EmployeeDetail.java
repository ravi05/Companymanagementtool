/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.db;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author A.Ranjan
 */
public class EmployeeDetail {


    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    public String getEmpName(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String name=null;
        rs=stmt.executeQuery("Select name from login where id='"+id+"'");
        while(rs.next()){
             name=rs.getString("name");
        }
                return name;
    }
    public ResultSet getEmpInfo(String skill,String post)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("with q as(select * from employee where post='"+post+"')select * from q where skill_set like '%"+skill+"%'");
        return rs;
    }
    public String selectEmp(String pmId,String pId,String id,String req_id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update employee set emp_status='acquired',req_id='"+req_id+"' where id='"+id+"'");
        stmt.executeUpdate("update requirement set selected=selected+1 where id='"+req_id+"'");
        rs=stmt.executeQuery("select selected,requested from requirement where id='"+req_id+"'");
        String check="pass";
        while(rs.next())
        {
            if(rs.getString("requested").equals(rs.getString("selected")))
            {
                check="fail";
            }
        }
        return check;
    }
    public ResultSet getAssociatedEmp(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt= con.createStatement();
        rs=stmt.executeQuery("select * from employee where pro_associated like '%"+id+"%'");
        return rs;
    }
    public String getHireDate(String id)throws SQLException
    {
        String date=null;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from requirement where id='"+id+"'");
        while(rs.next())
        {
            date=rs.getString("app_date");
        }
        return date;
    }
    public void releaseEmp(String id,String req_id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update employee set emp_status='on bench',req_id='NA' where id='"+id+"'");
        stmt.executeUpdate("update requirement set selected=selected-1 where id='"+req_id+"'");
     }
    public ResultSet getRequestedEmp(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from employee where req_id='"+id+"'");
        return rs;
    }
    public void approveRequestedEmp(String id,String reqId)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update employee set emp_status='hired' where id='"+id+"'");
        stmt.executeUpdate("update requirement set approved=approved+1 where id='"+reqId+"'");
    }
    public void rejectRequestedEmp(String id,String reqId)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update employee set emp_status='acquired' where id='"+id+"'");
        stmt.executeUpdate("update requirement set approved=approved-1 where id='"+reqId+"'");
    }
    public ResultSet getEmpInfo(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select * from registration,login,employee where registration.id='"+id+"' and login.id='"+id+"' and employee.id='"+id+"'");
        return rs;
    }
}
