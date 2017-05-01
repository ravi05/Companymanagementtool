<%--
    Document   : editProfileEmployee
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
<title>Edit Profile</title>
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


<script type="text/javascript">
function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true
	}
</script>
<script type="text/javascript">
function editEmployeeValidate(objForm){

if(objForm.password.value.length==0){
alert("Please enter password");
objForm.password.focus();
return false;
}
if ((objForm.email.value==null)||(objForm.email.value=="")){
		alert("Please Enter your Email ID")
		objForm.email.focus()
		return false
	}
	if (echeck(objForm.email.value)==false){
		objForm.email.value=""
		objForm.email.focus()
		return false
	}



if(objForm.location.value.length==0){
alert("Please enter location");
objForm.location.focus();
return false;
}

if(objForm.qualification.value.length==0){
alert("Please enter qualification");
objForm.qualification.focus();
return false;
}

if(objForm.skill.value.length==0){
alert("Please enter skills");
objForm.skill.focus();
return false;
}
if(isNaN(objForm.mobile.value)||objForm.mobile.value.indexOf(" ")!=-1 ){

alert("Please Enter numeric value !!");
objForm.mobile.focus();
return false;
}
if(objForm.mobile.value.length!=10 ){

alert("Please enter 10 digit mobile no !!");
objForm.mobile.focus();
return false;
}
if(objForm.mobile.value.length==0 ){

alert("Please enter mobile no !!");
objForm.mobile.focus();
return false;
}

return true;
}
</script>
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
    String id=request.getParameter("id");
    String linkB="/html-jsp/viewProfileEmployee.jsp?id="+id;
    EmployeeDetail ed=new EmployeeDetail();
ResultSet rs=ed.getEmpInfo(id);
if(rs!=null)
  {
%>
<div id="container" style="width: 436px; ">

    <%
    while(rs.next())
       {     %>
       <html:link page="<%=linkB%>"><font color="blue">back</font></html:link><br/>
       <h3>Edit Details:</h3><br/>
       
<table align="center" border="1" bgcolor="#ADDFFF"><tr><td style="width: 400px">
            <html:form action="/editProfile" method="POST" onsubmit="return editEmployeeValidate(this);">
 <strong>Employee ID::</strong>&nbsp;
 <html:text readonly="true" property="employeeId" value="<%=rs.getString("id")%>"/><br/><br/>
            <strong>Password:</strong>&nbsp;
<html:password property="password" value="<%=rs.getString("password")%>"/><br/><br/>

<strong> Email:</strong>&nbsp;
<html:text property="email" value="<%=rs.getString("email_id")%>"/><br/><br/>
            
<strong>  Address:</strong>&nbsp;
<html:text property="location" value="<%=rs.getString("current_add")%>"/><br/><br/>
 <strong>  Mobile:</strong>&nbsp;
 <html:text property="mobile" value="<%=rs.getString("mobile_num")%>"/><br/> <br/>
 <br/> <br/>
  <strong>   Technical Skills:</strong>&nbsp;
 <html:text property="skill" value="<%=rs.getString("skill_set")%>"/><br/><br/>
 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <html:submit value="Save"/>

 </html:form>
           


        </td></tr></table>
<%}%>
</div>
<%}%>
</body>

</html:html>
