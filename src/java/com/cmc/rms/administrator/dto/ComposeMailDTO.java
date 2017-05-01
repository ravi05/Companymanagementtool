/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.dto;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;

/**
 *
 * @author Tonyw@rringle
 */
public class ComposeMailDTO {


Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

public String composeMail(String from,String to,String subject,String message)throws SQLException {

    //        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

       stmt.executeUpdate("insert into intramail values('msg'||ABC.nextval,to_date(sysdate,'dd/mm/yyyy'),'"+from+"','"+to+"','"+subject+"','"+message+"','S')");
            logic="composeM";
//        } catch (SQLException sq) {
//            sq.printStackTrace();
//        }
        return logic;
    }
public String saveMail(String from,String to,String subject,String message)throws SQLException {

    //        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();

       stmt.executeUpdate("insert into draft values('msg'||ABC.nextval,to_date(sysdate,'dd/mm/yyyy'),'"+from+"','"+to+"','"+subject+"','"+message+"')");
            logic="saveM";
//        } catch (SQLException sq) {
//            sq.printStackTrace();
//        }
        return logic;
    }

}
