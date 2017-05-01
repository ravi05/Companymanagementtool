/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.dto;
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author A.Ranjan
 */
public class PmProjectDetailDTO {
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    public String enterProDetail(String pmId,String pId,String duration,String technology)throws SQLException
    {
        String logic=null;
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        stmt.executeUpdate("update project set duration='"+duration+"',technology=lower('"+technology+"'),start_date=to_date(sysdate,'dd/mm/yy') where p_id='"+pId+"'");
        logic="detailEntered";
        return logic;
    }

}
