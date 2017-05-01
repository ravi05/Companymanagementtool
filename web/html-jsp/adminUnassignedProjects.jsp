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
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>

<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Unassigned Projects</title>
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
<%
String id=(String)request.getParameter("id");
String p_id=(String)request.getParameter("p_id");

ProjectDB pdb=new ProjectDB();
if(id!=null&&p_id!=null)
{
pdb.updateProject(id, p_id);
}
ResultSet rs=pdb.getUnassignedProjects();
%>
<body>

<div id="container" style="width: 436px; ">
    <%while(rs.next()){%>
    <h3><%=rs.getString("p_name")%></h3><br/>
    Ordering Company:&nbsp;&nbsp;&nbsp;&nbsp;<%=pdb.getCompany(rs.getString("c_id"))%><br/>
    End Date:&nbsp;&nbsp;&nbsp;&nbsp;<%=pdb.getEndDate(rs.getString("c_id"))%><br/>
    <%String link="unassignedprojects.do?p_id="+rs.getString("p_id");%>
    <html:link action="<%=link%>"><font color="blue"><u>Available Project Managers</u></font></html:link>
    <%}%>
</div>


</body>

</html:html>
