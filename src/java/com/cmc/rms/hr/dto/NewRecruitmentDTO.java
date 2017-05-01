/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.hr.dto;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author Tonyw@rringle
 */
public class NewRecruitmentDTO {

Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

public String newRecruitment(String jobTitle, String opening,String skill,String ageLimit1,String ageLimit2,String exp,String jobDescription,String sal,String dept)throws SQLException {

    //        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            int totalPost=Integer.parseInt(opening);
            String type=null;
            String age=(ageLimit1+"-"+ageLimit2);
            if(jobTitle.equals("Project Manager"))
            {
              type="JPM00";
            }
            else if(jobTitle.equals("Human Resource"))
            {
              type="JHR00";
            }

            else
            {
              type="JSE00";
            }

       stmt.executeUpdate("insert into job values('"+type+"'||ABC.nextval,'"+jobTitle+"',"+totalPost+",to_date(sysdate,'dd/mm/yyyy'),'"+skill+"','"+age+"','"+exp+"','"+jobDescription+"','"+sal+"','"+dept+"')");
            logic="new_recruitment";
//        } catch (SQLException sq) {
//            sq.printStackTrace();
//        }
        return logic;
    }
}

