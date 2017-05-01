<%--
    Document   : pm_manage_resource
    Created on : Nov 1, 2010, 3:12:08 PM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@page import="java.sql.*" %>
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>
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
  String link="pmrequirement.do?p_id="+p_id+"&pm_id="+pm_id;
  %>
<body>
    <html:form action="<%=link%>">
    &nbsp;&nbsp;&nbsp;Project Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="textProId" value="<%=p_id%>" readonly="true"/>

    &nbsp;&nbsp;&nbsp;Designation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:select property="selectDesg">

        <html:option value="System Analyst">System Analyst</html:option>
        <html:option value="System Designer">System Designer</html:option>
        <html:option value="System Builder">System Builder</html:option>
        <html:option value="System Tester">System Tester</html:option>
    </html:select>
        &nbsp;&nbsp;&nbsp;Skills&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="textSkill"/><br/>
        &nbsp;&nbsp;&nbsp;Your ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="textPmId" value="<%=pm_id%>" readonly="true"/>
        
    &nbsp;&nbsp;&nbsp;No.s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:text property="textQty"/>
        <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:submit property="submitRequest" value="Create Request"/>

    </html:form>
</body>

</html:html>

