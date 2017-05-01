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
<%@page import="com.cmc.rms.administrator.db.ProjectManagerDB;" %>
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>

<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>

<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Current Projects</title>
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
<%  String p_id=request.getParameter("p_id");
    ProjectManagerDB pmdb=new ProjectManagerDB();
    ResultSet rs=pmdb.getPmInfo();
%>
<body>

<div id="container" style="width: 436px; ">
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td>PM_ID</td>
            <td>Name</td>
            <td>Dept</td>
            <td>Current Projects(no.s)</td>
            <td>Projects completed(no.s)</td>
            <td>Action</td>

        </tr>

            <%while(rs.next()){%>
        <tr>
            <td><%String pmId=rs.getString("id");%><%=pmId%></td>
            <td><%=pmdb.getPmName(pmId)%></td>
            <td><%=rs.getString("dept")%> </td>
            <td><%=pmdb.getNumbers(pmId)%></td>
            <td><%=pmdb.getNumbersDone(pmId)%></td>
            <%String link="assigntopm.do?id="+pmId+"&p_id="+p_id;%>
            <td><html:link action="<%=link%>"><u>Assign</u></html:link></td>
        </tr>
        <%}%>
    </table>
</div>


</body>

</html:html>
