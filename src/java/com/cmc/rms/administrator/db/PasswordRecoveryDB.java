/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.db;
import java.sql.*;
/**
 *
 * @author Tonyw@rringle
 */
public class PasswordRecoveryDB {

    Connection con=null;
    ResultSet rs=null;
    Statement stmt=null;

    public ResultSet getpassword()throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String query="select login.password from login,PASSWORD_RECOVERY,REGISTRATION where login.id=PASSWORD_RECOVERY.id and REGISTRATION.chooseyour_ques=PASSWORD_RECOVERY.question and REGISTRATION.your_ans=PASSWORD_RECOVERY.answer";
        rs=stmt.executeQuery(query);
       
        return rs;
    }
public void deletepassword(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String query="delete from PASSWORD_RECOVERY where id='"+id+"'";
        stmt.executeQuery(query);


    }
}
