<%--
    Document   : about
    Created on : Nov 1, 2010, 1:41:53 PM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@page import="java.io.*;" %>
<%@page import="java.sql.Clob" %>
<%@page import="com.cmc.rms.hr.db.CandidatesApplied;" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd http://www.w3.org/1999/xhtml">

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
    <html:form action="/hrcandidatesapplied">

    <%

    String jobId=request.getParameter("jobId");
    String i=(String)request.getParameter("i");
    int counter=Integer.parseInt(i);
    CandidatesApplied ca=new CandidatesApplied();
if(counter>0)
    {
        String status=request.getParameter("status");
        String appId=request.getParameter("appId");
        ca.alterApplicants(appId,status);
        counter++;
    }
    ResultSet rs=ca.getAppliedCandidates(jobId);

%>

<div id="navigation">
<ul>
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td><strong><u>App ID</u></strong></td>
            <td><strong><u>Name</u></strong></td>
            <td><strong><u>Sex</u></strong></td>
            <td><strong><u>Email-Id</u></strong></td>
            <td><strong><u>Location</u></strong></td>
            <td><strong><u>Mobile</u></strong></td>
            <td><strong><u>Experience</u></strong></td>
            <td><strong><u>Key Skills</u></strong></td>
            <td><strong><u>Qualification</u></strong></td>
            <td><strong><u>Resume Headline</u></strong></td>
            <td><strong><u>Resume</u></strong></td>
            <td><strong><u>Current Status</u></strong></td>
            <td><strong><u>Action</u></strong></td>
        </tr>
        <%while(rs.next())
            {%>
            <tr>
            <td><strong><u><%=rs.getString("app_id")%></u></strong></td>
            <td><strong><u><%=rs.getString("your_name")%></u></strong></td>
            <td><strong><u><%=rs.getString("sex")%></u></strong></td>
            <td><strong><u><%=rs.getString("email_id")%></u></strong></td>
            <td><strong><u><%=rs.getString("current_loc")%></u></strong></td>
            <td><strong><u><%=rs.getString("mobile")%></u></strong></td>
            <td><strong><u><%=rs.getString("total_exp")%></u></strong></td>
            <td><strong><u><%=rs.getString("keyskills")%></u></strong></td>
            <td><strong><u><%=rs.getString("qualification")%></u></strong></td>
            <td><strong><u><%=rs.getString("resume_headline")%></u></strong></td>
            <td><strong><u><%=rs.getString("attach_resume")%></u></strong></td>
            <td><strong><u><%=rs.getString("status")%></u></strong></td>
            <td><strong><u><%String appId=rs.getString(1); String linkS="hrcandidatesapplied.do?appId="+appId+"&status=select&i=1&jobId="+jobId;%><html:link action="<%=linkS%>">Select</html:link></u></strong><strong><u><%String linkR="hrcandidatesapplied.do?appId="+appId+"&status=reject&i=1&jobId="+jobId;%><br><html:link action="<%=linkR%>">Reject</html:link></u></strong><br></td>

            </tr>
            <%}%>
    </table>
<%/*
BufferedInputStream filein = null;
BufferedOutputStream outputs = null;
try {
File file = (File)rs.getClob(10);//specify the file path
byte b[] = new byte[2048];
int len = 0;
filein = new BufferedInputStream(new FileInputStream(file));
outputs = new BufferedOutputStream(response.getOutputStream());
response.setHeader("Content-Length", ""+file.length());
response.setContentType("application/force-download");
response.setHeader("Content-Disposition","attachment;filename=Backup.csv");
response.setHeader("Content-Transfer-Encoding", "binary");
while ((len = filein.read(b)) > 0) {
outputs.write(b, 0, len);
outputs.flush();
}
}
catch(Exception e){
out.println(e);
}*/
%>
</ul>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>

    </html:form>
</body>


</html:html>
