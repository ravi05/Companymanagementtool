/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.hr.dto;
import com.cmc.rms.administrator.db.DBConnect;
import java.io.File;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author Tonyw@rringle
 */
public class JobApplicationDTO {
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    String logic=null;

    public String clientDetail(String name,String eMail,String curLoc,String cuurentLocation,String mobile,String exp,String skill,String qualification,String attachResume,String resumeHeadline,String jobID,String sex)throws SQLException
    {
            con=DBConnect.getConnection();
            stmt=con.createStatement();
            File file=new File(attachResume);
            int totalExp=Integer.parseInt(exp);
          //  stmt.executeUpdate("insert into client values('CL00'||ABC.nextval ,'"+name+"','"+email+"',to_date('"+date+"','dd/mm/yyyy'),'"+projectName+"','"+phone+"',"+budgetf+",'','','','','"+compNmae+"','"+query+"') ");
            stmt.executeUpdate("insert into applicant values('JA00'||ABC.nextval,'"+name+"','"+eMail+"','"+curLoc+"','"+mobile+"',"+totalExp+",'"+skill+"','"+resumeHeadline+"','"+qualification+"','"+file+"','"+jobID+"','N','"+sex+"')");
            logic="updateClient";


        return logic;
    }

}
