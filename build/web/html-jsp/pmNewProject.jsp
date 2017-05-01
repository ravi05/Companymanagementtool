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
<%}String sub=(String)session.getAttribute("submit");
System.out.println(sub);
if(sub!=null){%>
<script type="text/javascript">
alert("Details entered for the project successfully!!");
</script>
<%}%>
<%String id=request.getParameter("id");
    ProjectDB pdb=new ProjectDB();
    ClientDB cdb=new ClientDB();
    ResultSet rs=pdb.getProjectDetail(id1);
    System.out.println(id1);
%>

<body>
    <%while(rs.next()){String pId=rs.getString("p_id");
        String cId=rs.getString("c_id");
        ResultSet rst=pdb.getClientInfo(cId);
        while(rst.next()){
    %>

<font size="5" color="blue"><%=rst.getString("p_name")%></font><br/>
<font size="3"><%=rst.getString("project_detail")%></font><br/>
End Date:&nbsp;&nbsp;&nbsp;&nbsp;<font size="3"><%=rst.getDate("end_date")%></font><br/><br/>
<%String linkP="/html-jsp/pmProjectDetailForm.jsp?p_id="+pId;%>
<html:link page="<%=linkP%>"><font color="blue">Enter Details</font></html:link><br/><br/>
<%}}%>


</body>

</html:html>

