<%--
    Document   : viewProfileEmployee
    Created on : Nov 30, 2010, 11:12:45 PM
    Author     : Tonywarringle
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page import="java.sql.*;" %>
<%@page import="com.cmc.rms.employee.db.EmployeeDetail;" %>
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Request Tracker</title>
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
    <%
    //String id=request.getParameter("id");
    EmployeeDetail ed=new EmployeeDetail();
ResultSet rs=ed.getEmpInfo(id1);
if(rs!=null)
  {
%>
<div id="container" style="width: 436px; ">
   
    <%
    while(rs.next())
       {     %>
       <h3>Employee Details:</h3><br/>
<%String linkE="/html-jsp/editProfileEmployee.jsp?id="+id1;%>
<table align="center" border="1" bgcolor="#ADDFFF"><tr><td style="width: 400px">
            &nbsp;&nbsp;&nbsp;&nbsp;<strong>ID:</strong>&nbsp;<%=rs.getString("id")%><br/>
           &nbsp;&nbsp;&nbsp;&nbsp; <strong>Name:</strong>&nbsp;<%=rs.getString("name")%><br/>
           &nbsp;&nbsp;&nbsp;&nbsp;<strong>Sex:</strong>&nbsp;<%=rs.getString("sex")%><br/>
           &nbsp;&nbsp;&nbsp;&nbsp;<strong>Age:</strong>&nbsp;<%=rs.getString("age")%><br/>
           &nbsp;&nbsp;&nbsp;&nbsp; <strong>Salary:</strong>&nbsp;<%=rs.getString("emp_sal")%><br/>
           &nbsp;&nbsp;&nbsp;&nbsp;<strong>Department:</strong>&nbsp;<%=rs.getString("dept")%><br/>

           &nbsp;&nbsp;&nbsp;&nbsp;<strong>Status:</strong>&nbsp;<%=rs.getString("emp_status")%><br/>
           &nbsp;&nbsp;&nbsp;&nbsp;<strong>Employee Type:</strong>&nbsp;<%=rs.getString("user_type")%><br/>
          &nbsp;&nbsp;&nbsp;&nbsp;<strong>Joining Date:</strong>&nbsp;<%=rs.getString("doj")%><br/>
          &nbsp;&nbsp;&nbsp;&nbsp; <strong>Your Question:</strong>&nbsp;<%=rs.getString("chooseyour_ques")%><br/>
          &nbsp;&nbsp;&nbsp;<strong>Your Answer:</strong>&nbsp;<html:password property="textAnswer" value="<%=rs.getString("your_ans")%>" readonly="true"/><br/>
          &nbsp;&nbsp;&nbsp;&nbsp; <hr<h4 align="center">   <html:link page="<%=linkE%>">Edit Section</html:link></h4>
          &nbsp;&nbsp;&nbsp;&nbsp; <strong>Password:</strong>&nbsp;<html:password property="textPass" value="<%=rs.getString("password")%>" readonly="true"/><br/>
          &nbsp;&nbsp;&nbsp;&nbsp; <strong> Email:</strong>&nbsp;<%=rs.getString("email_id")%><br/>
          &nbsp;&nbsp;&nbsp;&nbsp; <strong> Address:</strong>&nbsp;<%=rs.getString("current_add")%><br/>
          &nbsp;&nbsp;&nbsp;&nbsp; <strong>   Technical Skills:</strong>&nbsp;<%=rs.getString("skill_set")%><br/>
          &nbsp;&nbsp;&nbsp;&nbsp; <strong>  Mobile:</strong>&nbsp;<%=rs.getString("mobile_num")%><br/>
          

        </td></tr></table>
<%}%>
</div>
<%}%>
</body>

</html:html>
