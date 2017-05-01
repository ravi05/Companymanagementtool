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
<%String id=request.getParameter("id");
    String req_id=request.getParameter("req_id");
    String p_id=request.getParameter("p_id");
    String post=request.getParameter("post");
    String skill=request.getParameter("skill");
    String emp_id=request.getParameter("empId");
    String check="pass";
    RequirementDB rdb=new RequirementDB();
    EmployeeDetail ed=new EmployeeDetail();
    if(emp_id!=null)
        {
            check=ed.selectEmp(id1,p_id,emp_id,request.getParameter("req_id"));
        }
    ResultSet rs=ed.getEmpInfo(skill, post);
%>

<%if(check.equals("fail")){%>
<jsp:forward page="/html-jsp/pmProjectRequest.jsp?req_id=1"/><%}%>

<body>
    <table border="1" bgcolor="#ADDFFF">
        <tr>
            <td>Emp_Id</td>
            <td>Name</td>
            <td>Post</td>
            <td>Dept</td>
            <td>Skill</td>
            <td>PM_Id</td>
            <td>PM_Name</td>
            <td>Project_Id</td>
            <td>Status</td>
            <td>Action</td>


        </tr>
        <%while(rs.next()){%>
        <tr>
            <%String empId=rs.getString("id");
            System.out.println(empId);
            String r_id=null;
            ResultSet rst=null;
             r_id=rs.getString("req_id");
             System.out.println(r_id);
             if(r_id!=null){
                    rst=rdb.getReqInfo(r_id);
                    }
            String pmId=null;
            String pId=null;
            System.out.println(empId);
            
            if(rst!=null){
            while(rst.next())
                {
                    pmId=rst.getString("pm_id");
                    pId=rst.getString("p_id");
                }
            }

%>          <td><%=empId%></td>
            <td><%=ed.getEmpName(empId)%></td>
            <td><%=rs.getString("post")%></td>
            <td><%=rs.getString("dept")%></td>
            <td><%=rs.getString("skill_set")%></td>
            <%if(pmId!=null){%>
            <td><%=pmId%></td>
            <td><%=ed.getEmpName(pmId)%></td>
            <td><%=pId%></td><%}else{System.out.println("hello");
            %><td>NA</td><td>NA</td><td>NA</td><%}%>
            <td><%=rs.getString("emp_status")%></td>

            <%
            String linkA="/html-jsp/pmAssignResources.jsp?p_id="+p_id+"&empId="+empId+"&skill="+skill+"&post="+post+"&req_id="+req_id;
            if(pmId==null){System.out.println(empId);
            %>
            <td><html:link page="<%=linkA%>"><font color="blue">Acquire</font></html:link></td>
            <%}else{%>
            <td>Acquired</td><%}%>


        </tr>
        <%}%>
    </table>


</body>

</html:html>

