<%--
    Document   : pm_manage_resource
    Created on : Nov 1, 2010, 3:12:08 PM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@page import="java.sql.*" %>
<%@page import="com.cmc.rms.projectmanager.db.RequirementDB;" %>
<%@page import="com.cmc.rms.projectmanager.db.ProjectManagerResourceDB;" %>
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
<%String p_id=request.getParameter("p_id");
  String pm_id=request.getParameter("pm_id");
  RequirementDB rdb=new RequirementDB();
  String linkS="/html-jsp/pmRequirement.jsp?p_id="+p_id+"&pm_id="+pm_id;
  String linkB="/html-jsp/pmCreateRequest.jsp?p_id="+p_id+"&id="+pm_id;
  %>

<body>
    Your Id:&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="textReqId" value="<%=pm_id%>" readonly="true"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Project Id:&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="text" value="<%=p_id%>" readonly="true"/>
    <br/><br/>Your Requirement Created Successfully for project!!!!<html:link page="<%=linkS%>"><font color="blue"><u>Create more request for same project</u></font></html:link>
    <br/><br/><br/><br/><br/><br/><br/><html:link page="<%=linkB%>"><font color="blue"><u>Create request for other projects</u></font></html:link>

</body>

</html:html>

