<%--
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>  
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page import="java.sql.*;" %>
<%@page import="com.cmc.rms.administrator.dto.PasswordRecoveryDTO;" %>
<%@page import="com.cmc.rms.administrator.formbean.LoginFormBean;" %>
<%@page import="javax.servlet.http.HttpSession;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<!-- #BeginTemplate "../master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Password Recovery Form</title>
<style type="text/css">
.style2 {
	font-size: large;
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

<script type="text/javascript">


function forgotValidate(objForm){
       if(objForm.passwordRecoveryForm_textEmpId.value.length==0){
      alert("Please enter your id!!");
      objForm.passwordRecoveryForm_textEmpId.focus();
      return false;
}
if(objForm.passwordRecoveryForm_selectQuestion.selectedIndex==0){
      alert("Please enter your question!!");
      objForm.passwordRecoveryForm_selectQuestion.focus();
      return false;
}
if(objForm.passwordRecoveryForm_textAnswer.value.length==0){
      alert("Please enter your answer!!");
      objForm.passwordRecoveryForm_textAnswer.focus();
      return false;
}



return true;
}

</script>


</head>

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
                       	<td style="width: 133px"><strong>&nbsp; </strong>
                            <html:link page="/html-jsp/about.jsp" style="width: 117px">
                                <font color="white"><strong>About</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp; </strong>
                            <html:link page="/html-jsp/news.jsp" style="width: 117px">

                                <font color="white"><strong>News</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp; </strong>
                            <html:link page="/html-jsp/portfolio.jsp" style="width: 117px">
                                <font color="white"><strong>Portfolio</strong></font></html:link></</td>
			<td style="width: 133px"><strong>&nbsp;&nbsp; </strong>
                            <html:link page="/html-jsp/recuritment.jsp" style="width: 117px">
                                <font color="white"><strong>Recruitments</strong></font></html:link></td>

			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                            <html:link page="/html-jsp/faq.jsp" style="width: 117px">
                                <font color="white"><strong>FAQ</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp; </strong>
                            <html:link page="/html-jsp/contact.jsp" style="width: 117px">
                                <font color="white"><strong>Contact</strong></font></html:link></td>
		</table></td></tr></div>
	</div>
            <html:img alt="" src="./images/toolbar.jpg" width="924" height="26" />
	<html:img alt="" src="../images/toolbar.jpg" width="924" height="26" />
	</div>

	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->
	<!-- Begin Content -->
	<div id="content" style="width: 910px">
		<!-- #BeginEditable "content" -->
		<h2 class="style2">Password Recovery Form:-</h2>
		<p><strong>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
		<html:form action="/passwordRecovery" method="POST" onsubmit="return forgotValidate(this);">


		
		&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Employee ID &nbsp;&nbsp;
                <html:text property="passwordRecoveryForm_textEmpId" style="width: 243px" /><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</strong>Your Question<strong>&nbsp;&nbsp; </strong>
                <html:select property="passwordRecoveryForm_selectQuestion" style="width: 252px">
                    <html:option value="0">select</html:option>
                    <html:option value="CompanyName">Your First Company Name</html:option>
                    <html:option value="NickName">Your Nick Name</html:option>
                    <html:option value="SchoolName">Your First School Name</html:option>
		</html:select><p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Your Answer&nbsp;&nbsp;
                <html:text property="passwordRecoveryForm_textAnswer" style="width: 253px" /><br/><br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;<strong><html:submit value="Submit" style="width: 75px" /></strong>&nbsp;&nbsp;&nbsp;
                        <html:reset value="Reset" style="width: 76px" /><br />
			<br />
			<h4><br /></h4>
		</html:form>
                <%

                 String pass=(String)session.getAttribute("pass");
                if(pass!=null){ 
                if(pass.equals("fail"))
                     {%>
                        Answer or user ID is invalid
                        <%}else{%>
                        Your password:<%=pass%>
                        <%request.getSession().invalidate();%>
                        <%}}%>
		<!-- #EndEditable "content" --></div>
	<!-- End Content -->
	<!-- Begin Footer -->
	<div id="footer" style="width: 916px">
            <p/><html:link page="/html-jsp/default.jsp">Home</html:link> | <html:link page="/html-jsp/about.jsp">About</html:link> |
            <html:link page="/html-jsp/news.jsp">News</html:link> |
            <html:link page="/html-jsp/portfolio.jsp">Portfolio</html:link>
		| <html:link page="/html-jsp/recuritment.jsp">Recruitments</html:link> |
                <html:link page="/html-jsp/faq.jsp">FAQ</html:link> |
               <html:link page="/html-jsp/contact.jsp">Contact</html:link><br/>
		<span class="gry"><font color="#999999">All rights reserved © 2010 RMS_mygroup2 </font></span>
	</div>

	<!-- End Footer --></div>
<!-- End Container -->

</body>

<!-- #EndTemplate -->

</html:html>>
