<%-- 
    Document   : candidatesApplied
    Created on : Nov 19, 2010, 10:01:36 PM
    Author     : A.Ranjan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
<%@page import="com.cmc.rms.hr.db.CandidatesApplied;" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HR Manager</title>
</head>
<%
String id1=(String)session.getAttribute("id");
if(id1==null)
    {
%>
<jsp:forward page="/html-jsp/default.jsp"/>
<%}%>

<body>


	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->
	<!-- Begin Content -->
        <%CandidatesApplied ca=new CandidatesApplied();%>
		<!-- #BeginEditable "content" -->
                <font><u><strong>JOB ID</strong></u></font>
                <br>
                <br>

                                  <%ResultSet rs=ca.getJobId();
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
                                       String link="candidatesapplied.do?jobId="+id+"&i=0";%>
                                       <html:link action="<%=link%>"><u>View Applicants</u></html:link>
                                       <br>
                                       <br>
                                       <br>
                                    <%}%>


        <!-- End Content -->
	<!-- Begin Footer -->

</body>

<!-- #EndTemplate -->

</html:html>
