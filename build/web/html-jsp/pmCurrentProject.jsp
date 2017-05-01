<%--
    Document   : pm_manage_resource
    Created on : Nov 1, 2010, 3:12:08 PM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@page import="java.sql.*" %>
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>
<%@page import="com.cmc.rms.client.db.ClientDB;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Manage Resource</title>
<style type="text/css">
.style1 {
	font-size: medium;
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

<body>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:link page="/html-jsp/pmNewProject.jsp"><font color="blue">New Project</font></html:link><br/><br/><br/><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:link page="/html-jsp/pmRunningProject.jsp"><font color="blue">Working Project</font></html:link><br/><br/><br/><br/>
</body>

</html:html>

