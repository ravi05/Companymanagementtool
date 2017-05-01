<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;" %>
<%@page import="java.sql.Clob" %>
<%@page import="com.cmc.rms.hr.db.CandidatesApplied;" %>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Add Employee</title>
</head>
<%
String id1=(String)session.getAttribute("id");
if(id1==null)
    {
%>
<jsp:forward page="/html-jsp/login.jsp"/>
<%}%>
<body>
    <html:link page="/html-jsp/admin_tools.jsp">back</html:link><br><br><br/><br/>

<strong>Add New Employee:
</strong>
<br/>
                                  <%
                                  CandidatesApplied ca=new CandidatesApplied();
                                  ResultSet rs=ca.getJobId();
                                  while(rs.next())
                                      {
                                  %>
                                  <strong><%=rs.getString(1)%></strong>
                                  <br>
                                  <%ResultSet rst=ca.getJobTitle(rs.getString(1));
                                  while(rst.next())
                                      {
                                    %>
                                    <font color="blue"  size="2"><%=rst.getString(1)%></font>
                                    <%}%>
                                    <br>
                                    <%String id=rs.getString(1);
                                       String link="adminaddemp.do?jobId="+id+"&i=0";%>
                                       <html:link action="<%=link%>"><u>View Applicants</u></html:link>
                                       <br>
                                       <br>
                                       <br>
                                    <%}%>


</body>

</html:html>
