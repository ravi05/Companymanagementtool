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
public class NewsDTO {

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

    public String newsUpdate(String newsTitle,String newsArea)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String querry="insert into NEWSTABLE values('N00'||ABC.nextval,'"+newsTitle+"','"+newsArea+"',to_date(sysdate,'dd/mm/yyyy'))";
        rs=stmt.executeQuery(querry);
        logic="newsUpload";
        return logic;
    }
}
