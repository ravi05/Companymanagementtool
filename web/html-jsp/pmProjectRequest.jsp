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
<%String p_id=request.getParameter("p_id");
  String re_id=request.getParameter("req_id");
  String skills=request.getParameter("skill");
  String desg=request.getParameter("post");
  RequirementDB rdb=new RequirementDB();
    ProjectDB pdb=new ProjectDB();
     if(re_id!=null)
      {
        rdb.alterReqStatus(re_id);
      }
  

    ResultSet rs=rdb.getReqInfoProject(p_id);


    %>

<body>

    <html:link page="/html-jsp/project_manager_inside.jsp">back</html:link><br>
<%if(rs!=null){%>
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td>Req. Id</td>
            <td>Request Date</td>
            <td>Pro. Name</td>
            <td>Skills</td>
            <td>Designation</td>
            <td>Requested</td>
            <td>Selected</td>
            <td>Status</td>
            <td>Action</td>
            
        </tr>

<%while(rs.next()){%>
<tr>
    <%String req_id=rs.getString("id");%>
    <td><%=req_id%></td>
    <td><%=rs.getDate("req_date")%></td>
    <td><%=pdb.getProName(rs.getString("p_id"))%></td>
    <%String skill=rs.getString("skill");
      String post=rs.getString("post");
      String status=rs.getString("status");
    %>
    <td><%=skill%></td>
    <td><%=post%></td>
    <td><%String req=rs.getString("requested");%><%=req%></td>
    <td><%String sel=rs.getString("selected");%><%=sel%></td>
    <td><%=status%></td>
    <%String linkV="/html-jsp/pmAssignResources.jsp?skill="+skill+"&post="+post+"&p_id="+p_id+"&req_id="+req_id;
      String linkA="/html-jsp/pmProjectRequest.jsp?req_id="+req_id+"&p_id="+p_id;
      String linkR="/html-jsp/pmReleaseResource.jsp?req_id="+req_id;
      if(req.equals(sel)&&status.equals("waiting"))
          {
    %>
    <td>       <html:link page="<%=linkA%>">Send for Approval</html:link><br/>
        <html:link page="<%=linkR%>">Release Resources</html:link>
 </td>
    <%}else if(status.equals("waiting")){%>
    <td><html:link page="<%=linkV%>">View Resources Available</html:link><br/>
        <html:link page="<%=linkA%>">Send for Approval</html:link><br/>
        <html:link page="<%=linkR%>">Release Resources</html:link>
 </td>
    <%}else{%>
    <td>Request submitted.</td>
    <%}%>
</tr>

<%}%>
    </table>
<%}%>
    </body>

</html:html>

