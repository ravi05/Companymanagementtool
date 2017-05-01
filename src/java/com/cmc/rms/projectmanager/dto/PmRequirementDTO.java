/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.dto;
import com.cmc.rms.administrator.db.DBConnect;
import java.sql.*;
/**
 *
 * @author A.Ranjan
 */
public class PmRequirementDTO {
    Connection con=null;
    ResultSet rs=null;
    Statement stmt=null;

    public String insertRequirement(String desg,String req_no,String pmId,String pId,String skill)throws SQLException
    {
        String logic=null;
        int requested=Integer.parseInt(req_no);
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("insert into requirement values('RE'||ABC.nextval,'"+desg+"',"+requested+",0,0,'"+pmId+"',to_date(sysdate,'dd/mm/yyyy'),'waiting','"+pId+"',lower('"+skill+"'))");
        logic="success";
        return logic;
    }
}
