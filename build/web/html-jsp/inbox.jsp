<%--
    Document   : inbox
    Created on : Nov 26, 2010, 11:54:59 PM
    Author     : Tonyw@rringle

--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.cmc.rms.administrator.db.ComposeMailDB;" %>
<%@page import="com.cmc.rms.administrator.formbean.LoginFormBean;" %>
<html:html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Inbox</title>
    </head>

    <body>


 <p><strong>Inbox:</strong></p>
        <%String id=request.getParameter("id"); %>
         <%String linkB="/html-jsp/mail.jsp?id="+id;%>
    <html:link page="<%=linkB%>">back</html:link><br/>
        <%
                    ComposeMailDB cmdb = new ComposeMailDB();
                    String i=request.getParameter("i");
            if(i!=null)
                {
                 String idD=request.getParameter("idD");
                 cmdb.deleteMessage(idD);
                }
                    ResultSet rs = cmdb.getMail(id);
                   if (rs != null) {
        %>
        


        <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td style="width: 200px" align="center"><strong>Sender</strong></td>
            <td style="width: 460px" align="center"><strong>Subject</strong></td>
            <td style="width: 200px" align="center"><strong>Date</strong></td>
            <td style="width: 100px" align="center"><strong>Delete</strong></td>
        </tr><%} else{%>Sorry !!! you have no mail...<%}%>




        <%while (rs.next()) {String msg=rs.getString(6);String linkM="inbox.do?message="+msg;
            String date=rs.getString(2);
     date=(new StringTokenizer(date)).nextToken();
     StringTokenizer st=new StringTokenizer(date,"-");
     String year=st.nextToken();
     String month=st.nextToken();
     String day=st.nextToken();
     date=day+"/"+month+"/"+year;
        %>
  
        

  <tr>
      <td style="width: 200px" align="center"><html:link href="mailto:"><%= rs.getString(3)%></html:link></td>
            <td style="width: 460px" align="center"><html:link action="<%=linkM%>"><%= rs.getString(5)%></html:link></td>
            <td style="width: 200px" align="center"><%= date%></td>
            <%String linkD="/html-jsp/inbox.jsp?idD="+rs.getString("seq_no")+"&i=1&id="+id;%>
            <td style="width: 100px" align="center"><html:link page="<%=linkD%>">Delete</html:link></td>
        </tr>


  <%}%></table>
      


    </body>

</html:html>
