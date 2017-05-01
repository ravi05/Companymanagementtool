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
<%String id=request.getParameter("id");

    ProjectDB pdb=new ProjectDB();
    ResultSet rs=pdb.getProjectRequest(id1);
    %>

<body>

    <html:link page="/html-jsp/project_manager_inside.jsp">back</html:link><br>
<h3 class="style1">Manage Resources</h3>
<p>Please choose one project here:</p>
<%while(rs.next()){
    String p_id=rs.getString("p_id");
    ResultSet rst=pdb.getClientInfo(rs.getString("c_id"));

    %>
<%while(rst.next()){%>
<font size="5" color="blue"><%=rst.getString("p_name")%></font><br/>
Details:&nbsp;&nbsp;<font size="3"><%=rst.getString("project_detail")%></font><br/>
End Date:&nbsp;&nbsp;<font size="3"><%=rst.getDate("end_date")%></font><br/>
<%String link="/html-jsp/pmProjectRequest.jsp?p_id="+p_id;%>
<html:link page="<%=link%>">View Request made</html:link>
<br/><br/>
<%}%>
<%}%>
</body>

</html:html>

