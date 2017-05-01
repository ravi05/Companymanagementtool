/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.client.dto;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.Connection;
import com.cmc.rms.administrator.db.DBConnect;
/**
 *
 * @author Tonyw@rringle
 */
public class ClientDTO {
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    String logic=null;
    public String clientDetail(String name,String email,String date,String projectName,String phone,String budget,String compName,String query)throws SQLException
    {
            con=DBConnect.getConnection();
            stmt=con.createStatement();
            float budgetf=Float.parseFloat(budget);
            stmt.executeUpdate("insert into client values('CL00'||ABC.nextval ,'"+name+"','"+email+"',to_date('"+date+"','dd/mm/yyyy'),'"+projectName+"','"+phone+"','"+compName+"','"+query+"','"+budgetf+"','NA') ");
            //stmt.executeUpdate("insert into client(C_ID,C_NAME,C_MAIL,P_NAME,CONTACT_NUM,C_BUDGET,COMPANY_NAME,PROJECT_DETAIL) values('CL00'||ABC.nextval ,'"+name+"','"+email+"','"+projectName+"','"+phone+"',"+budgetf+",'"+compNmae+"','"+query+"') ");
            logic="updateClient";


        return logic;
    }

}
