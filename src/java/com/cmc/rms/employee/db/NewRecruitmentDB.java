/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.db;
import com.cmc.rms.administrator.db.DBConnect;
import java.sql.*;
/**
 *
 * @author Tonyw@rringle
 */
public class NewRecruitmentDB {
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

    public ResultSet getResult()throws SQLException {
//        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String querry="select * from job";
            rs=stmt.executeQuery(querry);

return rs;
}
}
