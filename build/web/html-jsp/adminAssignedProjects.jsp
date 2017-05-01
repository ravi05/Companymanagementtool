<%--
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;" %>
<%@page import="java.util.*;" %>
<%@page import="com.cmc.rms.client.db.ClientDB;" %>
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>
<%@page import="com.cmc.rms.employee.db.EmployeeDetail;" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>

<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Assigned Projects</title>
<!-- #EndEditable -->
<link rel="stylesheet" type="text/css" title="CSS" href="styles/style1.css" media="screen" />
<style type="text/css">
.style1 {
	font-size: medium;
	margin-bottom: 0px;
}
.style2 {
	margin-bottom: 0px;
}
</style>
</head>
<%
String id1=(String)session.getAttribute("id");
if(id1==null)
    {
%>
<jsp:forward page="/html-jsp/default.jsp"/>
<%}%>
<%  ProjectDB pdb=new ProjectDB();
   ResultSet rs=pdb.getAssignedProject();
   EmployeeDetail ed=new EmployeeDetail();
%>
<body>
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td>P_ID</td>
            <td>P_NAME</td>
            <td>PM_ID</td>
            <td>PM_NAME</td>
            <td>start date</td>
            <td>technology</td>
            <td>duration(in months)</td>
        </tr>
        <%while(rs.next()){
        String pmId=rs.getString("pm_id");
    %>
        <tr>
            <td><%=rs.getString("p_id")%></td>
            <td><%=rs.getString("p_name")%></td>
            <td><%=rs.getString("pm_id")%></td>
            <td><%=ed.getEmpName(pmId)%></td>
            <td><%=rs.getDate("start_date")%></td>
            <td><%=rs.getString("technology")%></td>
            <td><%=rs.getString("duration")%></td>

        </tr>

        <%}%>

    </table>
</body>

</html:html>
