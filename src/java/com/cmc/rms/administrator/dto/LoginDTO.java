/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.dto;

/**
 *
 * @author Tonyw@rringle
 */
import java.sql.*;
import com.cmc.rms.administrator.db.DBConnect;
public class LoginDTO {

    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    String logic = null;

    public String checkUser(String id, String password, String desg) {
        try {
            con = DBConnect.getConnection();

            stmt = con.createStatement();
            int type=Integer.parseInt(desg);
            switch(type)
            {
                case 1:
                rs=stmt.executeQuery("select * from login where user_type='admin'");
                 while(rs.next())
                {
                    if (id.equals(rs.getString(1)) && password.equals(rs.getString(3))) {
                    logic = "successAdmin";
                    break;
                }   else
                {
                    logic = "fail";
                }
                }break;
                case 2:
                rs=stmt.executeQuery("select * from login where user_type='Project Manager'");

                    while (rs.next())
                {
                    if (id.equals(rs.getString(1)) && password.equals(rs.getString(3))) {
                    logic = "successPMngr";
                    break;
                }   else
                {
                    logic = "fail";
                }
                }break;
                case 3:
                    rs=stmt.executeQuery("select * from login where user_type NOT IN('admin','Project Manager','Human Resource')");

                  while (rs.next())
                {
                      String status=rs.getString("login_status");
                      System.out.println(status);
                    if (id.equals(rs.getString("id")) && password.equals(rs.getString("password")))
                {
                        //logic = "successEmp";
                          //break;

                        if(status.equals("1"))
                        {

                            logic = "successEmp";
                            break;
                        }else{
                            logic="firstReg";
                            break;
                        }


                }   else
                {
                    logic = "fail";
                }
                }break;
                case 4:
                 rs=stmt.executeQuery("select * from login where user_type='Human Resource'");

                    while (rs.next())
                {
                    if (id.equals(rs.getString(1)) && password.equals(rs.getString(3))) {
                    logic = "successHRMngr";
                    break;
                }   else
                {
                    logic = "fail";
                }
                }
                break;
                default : logic="fail";
            }

        } catch (SQLException sq) {
            sq.printStackTrace();
        }
        return logic;
    }
}

