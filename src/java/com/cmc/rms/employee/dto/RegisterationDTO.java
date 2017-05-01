/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.dto;
import com.cmc.rms.administrator.db.DBConnect;
import java.sql.*;

/**
 *
 * @author Tonyw@rringle
 */
public class RegisterationDTO {
   Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

public String registerEmp(String nameF,String nameL,String id,String password,String passwordConfirm,String sex,String age,String post,String dojD,String dojM,String dojY,String currentAdd,String mobile,String email,String question,String answer)throws SQLException {



            con = DBConnect.getConnection();
            stmt = con.createStatement();


            String query="insert into REGISTRATION values('"+nameF+"','"+nameL+"','"+id+"','"+password+"','"+sex+"','"+age+"','"+post+"',to_date(sysdate,'dd/mm/yy'),'"+currentAdd+"','"+mobile+"','"+email+"','"+question+"','"+answer+"')";
            stmt.executeQuery(query);
            stmt.executeUpdate("insert into intramail values('msg'||ABC.nextval,to_date(sysdate,'dd/mm/yyyy'),'admin001','"+id+"','Welcome','Hi.. "+nameF+"!! Welcome to the network.','S')");

            stmt.executeUpdate("update login set login_status='1',password='"+password+"' where id='"+id+"'");
            logic="registered";
        return logic;
    }

}
