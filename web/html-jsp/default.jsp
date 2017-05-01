<%-- 
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
 <%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
 <%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<!-- #BeginTemplate "master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Home</title>
<style type="text/css">
.style1 {
	text-align: justify;
}
</style>
<!-- #EndEditable -->
<link rel="stylesheet" type="text/css" title="CSS" href="./css/style1.css" media="screen" />
<link rel="stylesheet" type="text/css" title="CSS" href="../css/style1.css" media="screen" />
<style type="text/css">
.style1 {
	margin-top: 0px;
}
.style3 {
	font-size: x-large;
}
</style>
<script  type="text/javascript">
function loginValidate(objForm){

if(objForm.textName.value.length==0){
alert("Please enter UserID!");
objForm.textName.focus();
return false;
}

if(objForm.passwordAll.value.length==0){
alert("Please enter Password!");
objForm.passwordAll.focus();
return false;
}

if(objForm.selectType.selectedIndex == 0 ){

alert("Please Select User Type!");
objForm.selectType.focus();
return false;
}

return true;
}
</script>

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

function clientValidate(objForm){
if(objForm.textName.value.length==0){
alert("Please enter your name!!");
objForm.textName.focus();
return false;
}

if(objForm.textProjectName.value.length==0){
alert("Please enter Project Name!!");
objForm.textProjectName.focus();
return false;
}

if(objForm.textCompName.value.length==0 ){

alert("Please enter company name!!");
objForm.textCompName.focus();
return false;
}
if(isNaN(objForm.textPhone.value)||objForm.textPhone.value.indexOf(" ")!=-1 ){

alert("Please Enter numeric value !!");
objForm.textPhone.focus();
return false;
}
if(objForm.textPhone.value.length!=10 ){

alert("Please enter 10 digit mobile no !!");
objForm.textPhone.focus();
return false;
}
if(objForm.textPhone.value.length==0 ){

alert("Please enter mobile no !!");
objForm.textPhone.focus();
return false;
}
if ((objForm.textEmail.value==null)||(objForm.textEmail.value=="")){
		alert("Please Enter your Email ID")
		objForm.textEmail.focus()
		return false
	}
	if (echeck(objForm.textEmail.value)==false){
		objForm.textEmail.value=""
		objForm.textEmail.focus()
		return false
	}

<%--if(objForm.textEmail.value.length==0 ){

alert("Please enter valid email!!");
objForm.textEmail.focus();
return false;
}--%>
if(objForm.textareaQuery.value.length==0 ){

alert("Please enter project Details!!");
objForm.textareaQuery.focus();
return false;
}

return true;
}

</script>
</head>
<%String name=(String)session.getAttribute("name");
    if(name!=null){
%>
<script type="text/javascript">
    alert("Thank You <%=name%>Your details submitted successfully!!");
</script>
<%}%>
<body>

<div id="container" style="width: 919px">
	<div id="masthead" style="width: 900px">
		<h1>&nbsp;</h1>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="white" face="'Alien Encounters'">
		<span class="style3">RESOURCE MANAGEMENT SYSTEM</span></font></h3>
	</div>

	<div style="position: relative; width: 935px; height: 21px; z-index: 1; " id="layer1" class="style1">
	<div style="position: absolute; width: 916px; height: 33px; z-index: 1; left: 0px; top: 0px" id="layer2">
	<div style="left: 0px; top: 0px; width: 920px" align="center">
	<tr><td><table>
			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 </strong>
                            <html:link  page="/html-jsp/default.jsp" style="width: 117px"><font color="white">
                                    <strong>Home</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp; </strong> <html:link page="/html-jsp/about.jsp" style="width: 117px">
                                <font color="white"><strong>About</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp; </strong> <html:link page="/html-jsp/news.jsp" style="width: 117px">
                                <font color="white"><strong>News</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp; </strong> <html:link page="/html-jsp/portfolio.jsp" style="width: 117px">
                                <font color="white"><strong>Portfolio</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp;&nbsp; </strong> <html:link page="/html-jsp/recuritment.jsp" style="width: 117px">
                                <font color="white"><strong>Recruitment</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp;&nbsp; </strong> <html:link page="/html-jsp/faq.jsp" style="width: 117px">
                                <font color="white"><strong>FAQ</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp; </strong> <html:link page="/html-jsp/contact.jsp" style="width: 117px">
                                <font color="white"><strong>Contact</strong></font></html:link></td>
		</table></td></tr></div>
	</div>
            <html:img alt="" src="./images/toolbar.jpg" width="924" height="26" />
            <html:img alt="" src="../images/toolbar.jpg" width="924" height="26"/>
	</div>

	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->
        <!-- Begin Content -->
	<div id="content" style="width: 910px">
		<!-- #BeginEditable "content" -->
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		User ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Password<br />
                <html:form action="/login" method="POST" onsubmit="return loginValidate(this);">
                    <html:select property="selectType" style="width: 179px">
                    <html:option value="0" >Select User Type</html:option>
                    <html:option value="1">Administrator</html:option>
                    <html:option value="2">Project Manager</html:option>
                    <html:option value="3">Employee</html:option>
                    <html:option value="4">HR Manager</html:option>
                    </html:select>&nbsp;&nbsp;&nbsp;<html:text property="textName" style="width: 172px" />&nbsp;&nbsp;&nbsp;<html:password property="passwordAll" style="width: 177px" />&nbsp;&nbsp;
                    <html:submit property="loginButton" value="Login" style="width: 84px" /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<html:link page="/html-jsp/pass_rcvr_form.jsp"><font color="blue">Forget your password</font></html:link>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br/>
		<br/></html:form>
		<HR style="height: -12px">
<p>		<h2>Resource Management System</h2>

		<div class="style1">

Resource management system(RMS) is the strategic and coherent approach to the management of an organization's most valued assets - the people working there who individually and collectively contribute to the achievement of the objectives of the business.[1] The terms "human resource management" and "human resources" (HR) have largely replaced the term "personnel management" as a description of the processes involved in managing people in organizations.[1] In simple words, HRM means employing people, developing their capacities, utilizing, maintaining and compensating their services in tune with the job and organizational requirement.
		</div>

	<hr>
	<tr><td>
	<html:form action="/client" method="POST" onsubmit="return clientValidate(this);">
	<strong><br />
		Client's Query:</strong><br /><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	Name&nbsp; <html:text property="textName" style="width: 203px"/><br /><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Project Name&nbsp;
        <html:text property="textProjectName" style="width: 203px"/><br />
	<br />
	&nbsp;&nbsp; Company Name&nbsp;
        <html:text property="textCompName" style="width: 203px"/><br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Phone&nbsp; <html:text property="textPhone" style="width: 203px"/><br/>
	<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Email&nbsp;&nbsp; <html:text property="textEmail" style="width: 203px"/><br/><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Budget&nbsp;&nbsp; <html:text property="textBudget" style="width: 203px"/><br/><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;End Date&nbsp;<html:text property="textDate" value="dd/mm/yyyy" style="width: 203px"/><br /><br/>
        <%--<html:select property="selectDurDate1" style="width: 53px">
            <html:option value="Date">Date</html:option>
        </html:select><html:select property="selsectDurMonth1" style="width: 66px">
            <html:option value="Month">Month</html:option>
        </html:select><html:select property="selectDurYear1" style="width: 85px">
            <html:option value="Year">Year</html:option>
        </html:select> <br /><br/>--%>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Query&nbsp;&nbsp;
        <html:textarea property="textareaQuery" cols="" rows="" style="width: 431px; height: 50px"></html:textarea><br /><br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <html:submit property="submitClient" value="Submit" style="width: 97px" />&nbsp;
        <html:reset property="resetClient" value="Reset" style="height: 26px; width: 97px" />
        </html:form>

</td></tr>

		<!-- #EndEditable "content" --></div>
	<!-- End Content -->
	<!-- Begin Footer -->
	<div id="footer" style="width: 916px">
            <P><html:link page="/html-jsp/default.jsp">Home</html:link> | <html:link page="/html-jsp/about.jsp">About</html:link> |
                <html:link page="/html-jsp/news.jsp">News</html:link> | <html:link page="/html-jsp/portfolio.jsp">Portfolio</html:link>
		| <html:link page="/html-jsp/recuritment.jsp">Recruitment</html:link> |
                <html:link page="/html-jsp/faq.jsp">FAQ</html:link> |
                <html:link page="/html-jsp/contact.jsp">Contact</html:link><br/>
		<span class="gry"><font color="#999999">All rights reserved © 2010 RMS_mygroup2 </font></span>
	</div>

	<!-- End Footer --></div>
<!-- End Container -->

</body>

<!-- #EndTemplate -->

</html:html>
