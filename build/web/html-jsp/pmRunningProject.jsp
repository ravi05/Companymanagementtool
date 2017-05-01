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
<%String id=request.getParameter("id");
    ProjectDB pdb=new ProjectDB();

    String p_id=request.getParameter("p_id");
    if(p_id!=null)
        {
            pdb.finalizeProject(p_id);
        }
    ClientDB cdb=new ClientDB();
    ResultSet rs=pdb.getProjectRunning(id1);
    System.out.println(id1);
%>

<body>
    <%while(rs.next()){
        String pId=rs.getString("p_id");
        ResultSet rst=pdb.getClientInfo(pId);
        while(rst.next()){
    %>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="blue" size="4"><%=rst.getString("p_name")%></font><br/><br/>
    Detail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="3"><%=rst.getString("project_detail")%></font><br/><br/>
    <%}%>
    Technology:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font size="4"><%=rs.getString("technology")%></font><br/><br/>
    <%String link="/html-jsp/pmProAssociatedEmployees.jsp?p_id="+pId;%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:link page="<%=link%>"><font color="blue" size="4">View Associated Employees</font></html:link><br/><br/>
    <%String linkF="/html-jsp/pmRunningProject.jsp?p_id="+pId;%>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:link page="<%=link%>"><font color="blue" size="4">Finalize Project</font></html:link><br/><br/><br/>

    <%}%>
</body>

</html:html>

