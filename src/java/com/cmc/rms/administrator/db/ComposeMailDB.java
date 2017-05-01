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
public class ComposeMailDB {

     Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    public ResultSet draftMail(String id)throws SQLException {

            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query="select * from draft where sender='"+id+"' order by mail_date desc";
            rs=stmt.executeQuery(query);
    return rs;
}

   
    public ResultSet getMail(String id)throws SQLException {

            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String query="with u as(select * from intramail where status IN('S','SD'))select * from u where receiver='"+id+"' order by mail_date desc";
            rs=stmt.executeQuery(query);
    return rs;
}
    public ResultSet getSentMail(String id)throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String query="with u as(select * from intramail where status IN('S','ID'))select * from u where sender='"+id+"' order by mail_date desc";
        rs=stmt.executeQuery(query);
        return rs;
    }
    
public void deleteMessage(String id) throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String querry="select status from intramail where seq_no='"+id+"'";
        
        rs=stmt.executeQuery(querry);
        String i=null;
        while(rs.next())
        {
            i=rs.getString("status");
        }
        if(i.equals("SD"))
        {
            stmt.executeUpdate("delete from intramail where seq_no='"+id+"'");
        }
        else if(i.equals("S"))
        {
                stmt.executeUpdate("update intramail set status='ID' where seq_no='"+id+"'");

        }
    
    }
public ResultSet deleteMessageDraft(String id) throws SQLException
    {
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String query="delete from draft where seq_no='"+id+"'";
        rs=stmt.executeQuery(query);

    return rs;
    }
public void deleteSentMail(String id)throws SQLException
{
        con=DBConnect.getConnection();
        stmt=con.createStatement();
        String querry="select status from intramail where seq_no='"+id+"'";
        rs=stmt.executeQuery(querry);
             String i=null;
        while(rs.next())
        {
            i=rs.getString("status");
        }
        if(i.equals("ID"))
        {
            stmt.executeUpdate("delete from intramail where seq_no='"+id+"'");
        }
        else if(i.equals("S"))
        {
                stmt.executeUpdate("update intramail set status='SD' where seq_no='"+id+"'");

        }

}


}
