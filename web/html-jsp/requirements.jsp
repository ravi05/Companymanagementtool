<%--
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@page import="java.sql.*;"%>
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>
<%@page import="com.cmc.rms.employee.db.EmployeeDetail;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Requirements</title>

<!-- #EndEditable -->
<!--<link rel="stylesheet" type="text/css" title="CSS" href="../css/style1.css" media="screen" />
<style type="text/css">
.style1 {
	font-size: small;
	margin-bottom: 0px;
}
.style2 {
	font-size: medium;
	margin-bottom: 0px;
	margin-left: 40px;
}
.style3 {
	color: #008080;
	font-weight: normal;
}
.style4 {
	margin-right: 0px;
}
.style5 {
	font-weight: normal;
}
</style>-->
</head>
<%
String id1=(String)session.getAttribute("id");
if(id1==null)
    {
%>
<jsp:forward page="/html-jsp/default.jsp"/>
<%}%>
<%ProjectDB pdb=new ProjectDB();
    ResultSet rs=pdb.getAdminRequestProject();
    EmployeeDetail ed=new EmployeeDetail();

%>
<body>
    <table border="1">
        <tr>
            <td>P_ID</td>
            <td>P_NAME</td>
            <td>PM_ID</td>
            <td>PM_NAME</td>
            <td>View Requests</td>
        </tr>
        <%while(rs.next()){
        String pId=rs.getString("p_id");
        String pmId=rs.getString("pm_id");
        String linkV="/html-jsp/adminViewProjectRequest.jsp?p_id="+pId;
        %><tr>
        <td><%=pId%></td>
        <td><%=rs.getString("p_name")%></td>
        <td><%=pmId%></td>
        <td><%=ed.getEmpName(pmId)%></td>
        <td><html:link page="<%=linkV%>"><font color="blue">View Request</font></html:link></td>
        </tr><%}%>
    </table>
</body>

</html:html>
