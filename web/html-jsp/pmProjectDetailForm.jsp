
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
<%}
String sub=(String)session.getAttribute("submit");
if(sub!=null){%>
<script type="text/javascript">
alert("Details entered for the project successfully!!");    
</script>
<%}%>
<%String pId=request.getParameter("p_id");
%>

<body>
    <html:form action="/pmprojectdetail">
    &nbsp;&nbsp;&nbsp;&nbsp;Your Id:&nbsp;&nbsp;&nbsp;&nbsp;
    <html:text property="textPmId" value="<%=id1%>" readonly="true"/>
    
    &nbsp;&nbsp;&nbsp;&nbsp;Project Id:&nbsp;&nbsp;&nbsp;&nbsp;
    <html:text property="textProjectId" value="<%=pId%>" readonly="true"/><br/><br/><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;Technology:&nbsp;&nbsp;&nbsp;&nbsp;

    <html:text property="textTechnology"/><br/><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;Duration(approx. in months):&nbsp;&nbsp;&nbsp;&nbsp;
    <html:text property="textDuration"/><br/><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;<html:submit value="submit"/>
    &nbsp;&nbsp;&nbsp;&nbsp;<html:reset value="reset"/>

    </html:form>
</body>

</html:html>

