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
<%
    String emp_id=request.getParameter("emp_id");
    EmployeeDetail ed=new EmployeeDetail();
    if(emp_id!=null)
        {
          ed.releaseEmp(emp_id);
        }
    String id=request.getParameter("id");
    String pId=request.getParameter("p_id");
    ProjectDB pdb=new ProjectDB();
    ClientDB cdb=new ClientDB();
    ResultSet rs=ed.getAssociatedEmp(pId);
    System.out.println(id1);
%>

<body>
    <table border="1">
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Skills</td>
            <td>Hire_date</td>
            <td>Action</td>
        </tr>
    <%while(rs.next()){
        String empId=rs.getString("id");
        String empName=ed.getEmpName(empId);
        String req_id=rs.getString("req_id");
        String hireDate=ed.getHireDate(req_id);
        String link="/html-jsp/pmProAssociatedEmployees.jsp?emp_id="+empId;
    %>
    <tr>
        <td><%=empId%></td>
        <td><%=empName%></td>
        <td><%=rs.getString("skill_set")%></td>
        <td><%=hireDate%></td>
        <td><html:link page="<%=link%>"><font color="blue">Release Employee</font></html:link></td>
    </tr>
    <%}%>
    </table>
    </body>

</html:html>

