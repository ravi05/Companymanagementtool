<%-- 
    Document   : adminAddEmp
    Created on : Nov 20, 2010, 11:53:27 AM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;" %>
<%@page import="java.sql.Clob" %>
<%@page import="com.cmc.rms.hr.db.CandidatesApplied;" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <html:form action="/adminaddemp">

    <%

    String i=(String)request.getParameter("i");
    int counter=Integer.parseInt(i);
    CandidatesApplied ca=new CandidatesApplied();
    String jobId=request.getParameter("jobId");

if(counter>0)
    {
        String status=request.getParameter("status");
        String appId=request.getParameter("appId");
        ca.selectApplicants(appId,status);
        counter++;
    }
        ResultSet rs=ca.getAppliedCandidatesAdmin(jobId);


%>

            
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td><strong><u>App ID</u></strong></td>
            <td><strong><u>Name</u></strong></td>
            <td><strong><u>Sex</u></strong></td>
            <td><strong><u>Email-Id</u></strong></td>
            <td><strong><u>Location</u></strong></td>
            <td><strong><u>Mobile</u></strong></td>
            <td><strong><u>Experience</u></strong></td>
            <td><strong><u>Key Skills</u></strong></td>
            <td><strong><u>Qualification</u></strong></td>
            <td><strong><u>Resume Headline</u></strong></td>
            <td><strong><u>Resume</u></strong></td>
            <td><strong><u>Current Status</u></strong></td>
            <td><strong><u>Action</u></strong></td>
        </tr>
        <%while(rs.next())
            {%>
            <tr>
            <td><strong><u><%=rs.getString("app_id")%></u></strong></td>
            <td><strong><u><%=rs.getString("your_name")%></u></strong></td>
            <td><strong><u><%=rs.getString("sex")%></u></strong></td>
            <td><strong><u><%=rs.getString("email_id")%></u></strong></td>
            <td><strong><u><%=rs.getString("current_loc")%></u></strong></td>
            <td><strong><u><%=rs.getString("mobile")%></u></strong></td>
            <td><strong><u><%=rs.getString("total_exp")%></u></strong></td>
            <td><strong><u><%=rs.getString("keyskills")%></u></strong></td>
            <td><strong><u><%=rs.getString("qualification")%></u></strong></td>
            <td><strong><u><%=rs.getString("resume_headline")%></u></strong></td>
            <td><strong><u><%=rs.getString("attach_resume")%></u></strong></td>
            <td><strong><u><%=rs.getString("status")%></u></strong></td>
            <td><strong><u><%String appId=rs.getString(1); String linkS="adminaddemp.do?appId="+appId+"&status=select&i=1&jobId="+jobId;%><html:link action="<%=linkS%>">Select</html:link></u></strong><strong><u><%String linkR="adminaddemp.do?appId="+appId+"&status=reject&i=1&jobId="+jobId;%><br><html:link action="<%=linkR%>">Reject</html:link></u></strong><br></td>

            </tr>
            <%}%>
    </table>
        </html:form>
    </body>
</html>
