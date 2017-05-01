<%--
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>

<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Request Tracker</title>
<!-- #EndEditable -->
<link rel="stylesheet" type="text/css" title="CSS" href="./css/style1.css" media="screen" />
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
<body>

<div id="container" style="width: 436px; ">
    <html:link page="/html-jsp/adminNewOrders.jsp"><font color="blue">New Orders</font></html:link><br/><br/>
    <html:link page="/html-jsp/adminCurrentProjects.jsp"><font color="blue">Current Projects</font></html:link><br/><br/>
<!--    <html:link page="/html-jsp/adminPreviousProjects.jsp"><font color="blue">Previous Projects</font></html:link><br/><br/>
    -->

</div>
</html:html>


	