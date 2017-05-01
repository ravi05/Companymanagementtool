<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page language="java" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<html:html>

<!-- #BeginTemplate "../master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Login Here</title>
<style type="text/css">
.style1 {
	margin-left: 0px;
}
.style2 {
	font-size: x-small;
}
.style3 {
	font-size: x-large;
}
.style4 {
	font-size: small;
}
.style5 {
	margin-left: 480px;
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
</head>
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
<body>


<div id="container" style="width: 919px">
	<div id="masthead" style="width: 900px">
		<h1>&nbsp;</h1>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="white" face="'Alien Encounters'"> 
		<span class="style3">RESOURCE MANAGEMENT SYSTEM</span></font></h3>
	</div>
	
	<div style="position: relative; width: 935px; height: 21px; z-index: 1;" id="layer1" class="style1">
	<div style="position: absolute; width: 916px; height: 33px; z-index: 1; left: 0px; top: 0px" id="layer2">
	<div style="left: 0px; top: 0px; width: 920px" align="center">
	<tr><td><table>
			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			 </strong> 
			 <html:link page="/html-jsp/default.jsp" style="width: 117px"><font color="white">
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
        <html:img src="./images/toolbar.jpg" width="924" height="26"/>
	<html:img src="../images/toolbar.jpg" width="924" height="26"/>
	</div>


	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
	
	<!-- End Navigation -->
	<!-- Begin Content -->
	<div id="content" style="width: 910px">
		<!-- #BeginEditable "content" -->
		<h2>Login Again</h2>
		<html:form action="/login" method="POST" onsubmit="return loginValidate(this);">
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Type :&nbsp;
                    
                    <html:select property="selectType" style="width: 179px">
                    <html:option value="0" >Select User Type</html:option>
                    <html:option value="1">Administrator</html:option>
                    <html:option value="2">Project Manager</html:option>
                    <html:option value="3">Employee</html:option>
                    <html:option value="4">HR Manager</html:option>
                    </html:select></p>
                <p/>&nbsp;&nbsp; User ID :&nbsp;<html:text property="textName" style="width: 185px" /><p>Password :<strong> </strong>
                    <html:password property="passwordAll" style="width: 185px; height: 18px;"/><br/><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <html:checkbox property="checkboxSign" />Stay signed in</p><br/>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
		&nbsp;<html:submit property="loginButton" value="Login" style="width: 75px" />
			<h5>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <html:link page="/html-jsp/pass_rcvr_form.jsp" title="Password Recovery Form" target="_self">
			<font color="blue">Forget your password</font></html:link><br /></h5>
			
                            
                        
		    
		
		<!-- #EndEditable "content" --></div>
	<!-- End Content -->
	<!-- Begin Footer -->
	<div id="footer" style="width: 916px">
            <p/><html:link page="/html-jsp/default.jsp">Home</html:link> | <html:link page="/html-jsp/about.jsp">About</html:link> |
		<html:link page="/html-jsp/news.jsp">News</html:link> |
		<html:link page="/html-jsp/portfolio.jsp">Portfolio</html:link>
		|<html:link page="/html-jsp/recuritment.jsp">Recruitment</html:link> |
		<html:link page="/html-jsp/faq.jsp">FAQ</html:link> |
		<html:link page="/html-jsp/contact.jsp">Contact</html:link><br/>
		<span class="gry"><font color="#999999">All rights reserved © 2010 RMS_mygroup2 </font></span>
	</div>

	
	<!-- End Footer --></div>
<!-- End Container -->

</body>

<!-- #EndTemplate -->

                </html:form>

</html:html>
