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
    String pId=request.getParameter("p_id");
    RequirementDB rdb=new RequirementDB();
    String i=request.getParameter("i");
    if(i!=null)
        {

            String req_id=request.getParameter("req_id");
            rdb.approveRequirement(req_id);
        }
    ResultSet rs=rdb.getReqInfoProjectAdmin(pId);



%>
<body>
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td>Req_id</td>
            <td>Skill</td>
            <td>requested</td>
            <td>selected</td>
            <td>approved</td>
            <td>action</td>
        </tr>
        <%while(rs.next()){
        String reqId=rs.getString("id");
        String linkV="/html-jsp/adminViewRequest.jsp?reqId="+reqId;
        String linkA="/html-jsp/adminViewProjectRequest.jsp?i=1&req_id="+reqId+"p_id="+pId;
    %>  <tr>
        <td><%=reqId%></td>
        <td><%=rs.getString("skill")%></td>
        <td><%=rs.getString("requested")%></td>
        <td><%=rs.getString("selected")%></td>
        <td><%=rs.getString("approved")%></td>
        <td><html:link page="<%=linkV%>"><font color="blue">View Selected Resources</font></html:link><br/><br/>
            <html:link page="<%=linkA%>"><font color="blue">Approve</font></html:link>

        </td>
    </tr><%}%>


    </table>
</body>

</html:html>
