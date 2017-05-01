/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.hr.db;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author A.Ranjan
 */
public class CandidatesApplied {
    Connection con=null;
    ResultSet rs=null;
    Statement stmt=null;
    public ResultSet getJobId()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select distinct(job_id) from applicant");

        return rs;
    }
    public void alterApplicants(String id,String status)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();

        if(status.equals("select"))
        {
            stmt.executeUpdate("update applicant set status='W' where app_id='"+id+"' ");
        }
        else if(status.equals("reject"))
        {
            stmt.executeUpdate("delete from applicant where app_id='"+id+"'");
        }

    }

    public void selectApplicants(String id,String status)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String type=null;
System.out.println("select1");
        if(status.equals("select"))
        {
            System.out.println("select2");
            ResultSet rs=stmt.executeQuery("select * from applicant where app_id='"+id+"'");
            while(rs.next())
            {
                String skill=rs.getString("keyskills");
                String name=rs.getString("your_name");
                System.out.println("select3");
                String jobId=rs.getString("job_id");
                ResultSet rst=stmt.executeQuery("select * from job where job_id='"+jobId+"'");

                while(rst.next())
                {
                    String title=rst.getString("job_title");
                    String sal=rst.getString("salary");
                    String dept=rst.getString("dept");

                    if(title.equals("Project Manager"))
                        {
                            type="PM00";
                        }

                    else if(title.equals("Human Resource"))
                        {
                            type="HR00";
                        }
                   else{
                            type="SE00";
                        }
System.out.println("select");


stmt.executeUpdate("insert into login values('"+type+"'||ABC.nextval,'"+name+"','"+type+"'||ABC.currval,'"+title+"','0')");
           stmt.executeUpdate("update applicant set status='selected' where app_id='"+id+"'");
stmt.executeUpdate("insert into employee values('"+type+"'||ABC.currval,'"+sal+"',lower('"+skill+"'),'NA','"+type+"'||ABC.currval,'on bench','"+dept+"','"+title+"','','NA','NA')");


                }
            }

        }
        else if(status.equals("reject"))
        {
            stmt.executeUpdate("update applicant set status='rejected' where app_id='"+id+"'");
        }

    }


    public ResultSet getAppliedCandidates(String jobId)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("with q as (select * from applicant where job_id='"+jobId+"') select * from q where status='N'");
        return rs;

    }
    public ResultSet getAppliedCandidatesAdmin(String jobId)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("with q as (select * from applicant where job_id='"+jobId+"') select * from q where status='W'");
        return rs;

    }

    public ResultSet getJobTitle(String jobId)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        rs=stmt.executeQuery("select job_title from job where job_id='"+jobId+"'");
        return rs;
    }
}
