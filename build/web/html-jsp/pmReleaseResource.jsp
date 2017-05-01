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
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>
<%@page import="com.cmc.rms.employee.db.EmployeeDetail;" %>
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
<%  String req_id=request.getParameter("req_id");
    String emp_id=request.getParameter("emp_id");
    EmployeeDetail ed=new EmployeeDetail();

    if(emp_id!=null)
        {
           ed.releaseEmp(emp_id,req_id);
        }
    ResultSet rs=ed.getRequestedEmp(req_id);
    %>

<body>

    <html:link page="/html-jsp/project_manager_inside.jsp">back</html:link><br>

    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td>EmpId</td>
            <td>Name</td>
            <td>Dept</td>
            <td>Action</td>

        </tr>
        <%while(rs.next()){
        String empId=rs.getString("id");
        String name=ed.getEmpName(empId);
        String linkR="/html-jsp/pmReleaseResource.jsp?emp_id="+empId+"&req_id="+req_id;
        %>
        <tr>
            <td><%=empId%></td>
            <td><%=name%></td>
            <td><%=rs.getString("dept")%></td>
            <td><html:link page="<%=linkR%>"><font color="blue">Release</font></html:link></td>
        </tr>
        <%}%>
    </table>
    </body>

</html:html>

