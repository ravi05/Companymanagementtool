<%-- 
    Document   : adminNewOrders
    Created on : Nov 23, 2010, 10:52:48 PM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;" %>
<%@page import="java.util.*;" %>
<%@page import="com.cmc.rms.client.db.ClientDB;" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Orders</title>
    </head>
  
<%
String id1=(String)session.getAttribute("id");
if(id1==null)
    {
%>
<jsp:forward page="/html-jsp/default.jsp"/>
<%}%>
    <%

    String i=(String)request.getParameter("i");
    int counter=0;
   ClientDB cdb=new ClientDB();

      if(i!=null)
    {
    counter=Integer.parseInt(i);
    }

    if(counter>0)
    {
        String status=request.getParameter("status");
        String clientId=request.getParameter("clientId");
        cdb.actionOrders(status, clientId);
        counter++;
    }
        ResultSet rs=cdb.getNewOrders();
     


%>

    <body>

        <%if(rs.next()){%>

    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td><strong><u>Client ID</u></strong></td>
            <td><strong>Name</strong></td>
            <td><strong>E-Mail</strong></td>
            <td><strong>End Date</strong></td>
            <td><strong>Project Name</strong></td>
            <td><strong>Contact</strong></td>
            <td><strong>Company Name</strong></td>
            <td><strong>Project Detail</strong></td>
            <td><strong>Budget</strong></td>
            <td><strong>Action</strong></td>
        </tr>
        <%} else{%>Sorry !!! No new projects ordered..<%}%>
        <%while(rs.next())
            {
            String date=rs.getString(4);
     date=(new StringTokenizer(date)).nextToken();
     StringTokenizer st=new StringTokenizer(date,"-");
     String year=st.nextToken();
     String month=st.nextToken();
     String day=st.nextToken();
     date=day+"/"+month+"/"+year;
%>
            <tr>
            <td><strong><u><%=rs.getString(1)%></u></strong></td>
            <td><strong><%=rs.getString(2)%></strong></td>
            <td><strong><%=rs.getString(3)%></strong></td>
            <td><strong><%=date%></strong></td>
            <td><strong><%=rs.getString(5)%></strong></td>
            <td><strong><%=rs.getString(6)%></strong></td>
            <td><strong><%=rs.getString(7)%></strong></td>
            <td><strong><%=rs.getString(8)%></strong></td>
            <td><strong><%=rs.getString(9)%></strong></td>
            <td><strong><u><%String clientId=rs.getString(1); String linkS="neworder.do?clientId="+clientId+"&status=select&i=1";%><html:link action="<%=linkS%>">Select</html:link></u></strong><strong><u><%String linkR="neworder.do?clientId="+clientId+"&status=reject&i=1";%><br><html:link action="<%=linkR%>">Reject</html:link></u></strong><br></td>

            </tr>
            <%}%>
    </table>

    </body>
</html>
