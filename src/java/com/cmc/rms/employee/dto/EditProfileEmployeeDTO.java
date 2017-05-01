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
public class EditProfileEmployeeDTO {
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

public String editProfile(String id,String password,String email,String location,String qualification,String skill,String mobile)throws SQLException {

    //        try {

            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query="update employee set skill_set=lower('"+skill+"') where id='"+id+"'";
            stmt.executeUpdate("update login set password='"+password+"' where id='"+id+"'");
            stmt.executeUpdate("update registration set mobile_num='"+mobile+"',current_add='"+location+"',email_id='"+email+"',password='"+password+"' where id='"+id+"'");
            stmt.executeUpdate(query);
            logic="editProfileEmp";
        return logic;
    }

}
