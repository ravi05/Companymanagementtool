/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.dto;
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

    public String candidateApply(String name,String eMail,String curLoc,String cuurentLocation,String mobile,String exp,String skill,String qualification,String attachResume,String resumeHeadline,String jobID,String sex)throws SQLException
    {
            con=DBConnect.getConnection();
            stmt=con.createStatement();
            File file=new File(attachResume);
            int totalExp=Integer.parseInt(exp);
            stmt.executeUpdate("insert into applicant values('"+jobID+"'||ABC.nextval,'"+name+"','"+eMail+"','"+curLoc+"','"+mobile+"',"+totalExp+",'"+skill+"','"+resumeHeadline+"','"+qualification+"','"+jobID+"','N','"+sex+"','"+file+"')");
            logic="dataSubmitted";


        return logic;
    }

}
