/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.dto;
import com.cmc.rms.administrator.db.DBConnect;
import java.sql.*;
/**
 *
 * @author Tonyw@rringle
 */
public class PasswordRecoveryDTO {
 Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

    public String passwordRecover(String id,String question,String answer)throws SQLException
    {
//        System.out.println("hello");
        con=DBConnect.getConnection();
        stmt=con.createStatement();
       // String querry="insert into PASSWORD_RECOVERY values('"+id+"','"+question+"','"+answer+"')";
       String ansQuery=("select * from registration where id='"+id+"'");
       String ans=null;
       String pass=null;
       rs=stmt.executeQuery(ansQuery);
       while(rs.next())
       {
            ans=rs.getString("your_ans");
            System.out.println(answer);
       }
       if(answer.equals(ans))
       {
           String query="select password from login where id='"+id+"'";
           rs=stmt.executeQuery(query);
           while(rs.next())
           {
               logic=rs.getString("password");
       
           }
           
            
       }else{
           logic="fail";
       }
               System.out.println("pass:"+logic);
       return logic;
       
    }
}
