<%--
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@page import="java.sql.*;"%>
<%@page import="com.cmc.rms.administrator.db.ProjectDB;" %>
<%@page import="com.cmc.rms.employee.db.EmployeeDetail;" %>
<%@page import="com.cmc.rms.projectmanager.db.RequirementDB;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Requirements</title>

<!-- #EndEditable -->
<!--<link rel="stylesheet" type="text/css" title="CSS" href="../css/style1.css" media="screen" />
<style type="text/css">
.style1 {
	font-size: small;
	margin-bottom: 0px;
}
.style2 {
	font-size: medium;
	margin-bottom: 0px;
	margin-left: 40px;
}
.style3 {
	color: #008080;
	font-weight: normal;
}
.style4 {
	margin-right: 0px;
}
.style5 {
	font-weight: normal;
}
</style>-->
</head>
<%
String id1=(String)session.getAttribute("id");
if(id1==null)
    {
%>
<jsp:forward page="/html-jsp/default.jsp"/>
<%}%>
<%
    EmployeeDetail ed=new EmployeeDetail();

    String i=request.getParameter("i");
    String reqId=request.getParameter("reqId");
    String emp_id=request.getParameter("empId");
    if(i!=null)
     {
        if(i.equals("0"))
            {
                ed.approveRequestedEmp(emp_id,reqId);
            }
        else if(i.equals("1"))
            {
                ed.rejectRequestedEmp(emp_id,reqId);
            }
    }
    RequirementDB rdb=new RequirementDB();
    ResultSet rs=ed.getRequestedEmp(reqId);

%>
<body>
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td>EmpId</td>
            <td>EmpName</td>
            <td>Skills</td>
            <td>Status</td>
            <td>Action</td>
        </tr>
        <%while(rs.next()){
            String empId=rs.getString("id");
            String status=rs.getString("emp_status");
            String linkA="/html-jsp/adminViewRequest.jsp?empId="+empId+"&i=0&reqId="+reqId;
            String linkR="/html-jsp/adminViewRequest.jsp?empId="+empId+"&i=1&reqId="+reqId;
    %>
        <tr>
            <td><%=empId%></td>
            <td><%=ed.getEmpName(empId)%></td>
            <td><%=rs.getString("skill_set")%></td>
            <td><%=status%></td>
            <%if(status.equals("acquired")){%>
            <td><html:link page="<%=linkA%>">Approve</html:link></td>
            <%}else{%>
            <td><html:link page="<%=linkR%>">Reject</html:link></td>
            <%}%>
            
        </tr>
        <%}%>

        
    </table>

</body>

</html:html>
