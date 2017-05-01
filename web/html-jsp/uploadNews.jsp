<%--
    Document   : uploadNews
    Created on : Nov 30, 2010, 02:52:59 AM
    Author     : Tonywarringle
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
<title>Upload News</title>
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
<body>
    <h3>Upload News:</h3><br/>
    <html:form action="/news">
        News Title&nbsp;<html:text property="newsTitle"/><br/><br/>
        &nbsp;&nbsp;&nbsp;News&nbsp;
        <html:textarea property="newsArea"/><br/><br/>
        <html:submit value="Submit"/>&nbsp;&nbsp;&nbsp;<html:reset value="Reset"/>
    </html:form>


    

</body>

</html:html>
