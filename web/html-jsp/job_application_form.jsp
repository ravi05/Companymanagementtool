<%--
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<!-- #BeginTemplate "../master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Application Form</title>
<style type="text/css">
.style1 {
	font-size: small;
}
.style2 {
	font-size: medium;
}
.style3 {
	margin-left: 0px;
}
.style4 {
	font-size: small;
}
.style5 {
	font-size: x-small;
	font-weight: bold;
}
.style6 {
	font-size: x-small;
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


function applicantValidate(objForm)
{
    if(objForm.jobApplication_textName.value.length==0)
        {
            alert("Please enter your name !!");
            objForm.jobApplication_textName.focus();
            return false;
        }
   if ((objForm.jobApplication_textEmailId.value==null)||(objForm.jobApplication_textEmailId.value=="")){
		alert("Please Enter your Email ID");
		objForm.jobApplication_textEmailId.focus();
		return false
	}
	if (echeck(objForm.jobApplication_textEmailId.value)==false){
		objForm.jobApplication_textEmailId.value="";
		objForm.jobApplication_textEmailId.focus();
		return false
	}





   <%-- if(objForm.jobApplication_textEmailId.value.length==0){
    alert("Please enter Email ID!!");
    objForm.jobApplication_textEmailId.focus();
    return false;
    }--%>
    if(objForm.jobApplication_selectLocation.selectedIndex == 0 ){

    alert("Please Select your location!");
    objForm.jobApplication_selectLocation.focus();
    return false;
}
if(isNaN(objForm.jobApplication_textMobile.value)||objForm.jobApplication_textMobile.value.indexOf(" ")!=-1 ){

    alert("Please Enter numeric value !!");
    objForm.jobApplication_textMobile.focus();
    return false;
}
if(objForm.jobApplication_textMobile.value.length!=10 ){

    alert("Please enter 10 digit mobile no !!");
    objForm.jobApplication_textMobile.focus();
    return false;
}
if(objForm.jobApplication_textMobile.value.length==0 ){

    alert("Please enter mobile no !!");
    objForm.jobApplication_textMobile.focus();
    return false;
}


    if ( ( objForm.jobApplication_radioSex[0].checked == false ) && ( objForm.jobApplication_radioSex[1].checked == false ) ) {

    alert("Please select your sex !!");
    objForm.jobApplication_radioSex.focus();
    return false;
}
if(objForm.jobApplication_selectExpYear.selectedIndex == 0 ){

    alert("Please Select Experience!");
    objForm.jobApplication_selectExpYear.focus();
    return false;
}
if(objForm.jobApplication_textareaSkill.value.length==0 ){

    alert("Please enter your skills !!");
    objForm.jobApplication_textareaSkill.focus();
    return false;
}
if(objForm.jobApplication_selectQualification.selectedIndex == 0 ){

    alert("Please Select your Qualification !!");
    objForm.jobApplication_selectQualification.focus();
    return false;
}
if(objForm.jobApplication_textResumeHeadline.value.length==0)
    {
        alert("Please enter resume Headline !!");
        objForm.jobApplication_textResumeHeadline.focus();
        return false;
    }
if(objForm.jobApplication_fileAttachResume.value.length==0)
{
    alert("Please attach your resume !!");
    objForm.jobApplication_fileAttachResume.focus();
    return false;
}
if ( ( objForm.jobApplication_checkboxValidInfo.checked == false )) {

    alert("Please check your all information is valid  !!");
    objForm.jobApplication_checkboxValidInfo.focus();
   
    return false;
}
if ( ( objForm.jobApplication_checkboxTermCond.checked == false )) {

    alert("Please check you are agree with term and conditions  !!");
   
    objForm.jobApplication_checkboxTermCond.focus();
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

	<div style="position: absolute; width: 935px; height: 21px; z-index: 1; left: 171px; top: 134px" id="layer1" class="style1">
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
                                <font color="white"><strong>Portfolio</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp;&nbsp; </strong>
                            <html:link page="/html-jsp/recuritment.jsp" style="width: 117px">
                                <font color="white"><strong>Recruitment</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                            <html:link page="/html-jsp/faq.jsp" style="width: 117px">
                                <font color="white"><strong>FAQ</strong></font></html:link></td>
			<td style="width: 133px"><strong>&nbsp;&nbsp;&nbsp; </strong>
                            <html:link page="/html-jsp/contact.jsp" style="width: 117px">
                                <font color="white"><strong>Contact</strong></font></html:link></td>
		</table></td></tr></div>
	</div>
            <html:img src="./images/toolbar.jpg" width="924" height="26" />
            <html:img src="../images/toolbar.jpg" width="924" height="26" />
	</div>

	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->

	<!-- Begin Content -->
	<div id="content" style="width: 910px">
		<!-- #BeginEditable "content" -->
		<h2 class="style1">Application Form</h2>
		<p class="style4"><span class="font18"><font color="maroon">Become a member of RMS and find
		the right job. Submit your resume here!</font></span></p>
                <html:form action="/jobApplication" method="POST" onsubmit="return applicantValidate(this);">
                    <%String jobid=request.getParameter("jobid"); %>

		<span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job ID:&nbsp;&nbsp; </span>
                <html:text property="jobApplication_textJobID" style="width: 218px" readonly="true" value="<%=jobid%>" />   <br/>
		
                    <strong>Contact Details:-</strong><p class="style2">

		<span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Your Name:&nbsp;&nbsp; </span>
                <html:text property="jobApplication_textName" style="width: 218px" /><p class="style2">
		<span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Email ID:&nbsp;&nbsp; </span>
                <html:text property="jobApplication_textEmailId" style="width: 218px" /><p class="style2">
                    <span class="style4">&nbsp;&nbsp;
                        Current Location:&nbsp; </span>&nbsp;<html:select property="jobApplication_selectLocation" style="width: 143px">

		
                        <html:option value="0">Select</html:option>
                        <html:option value="Delhi">DELHI</html:option>
                        <html:option value="Dhanbad">DHANBAD</html:option>
                        <html:option value="Noida">NOIDA</html:option>
                        <html:option value="UP">U.P.</html:option>
                        <html:option value="MP">M.P.</html:option>
		</html:select>&nbsp;&nbsp;
                <p class="style2"><span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Mobile:&nbsp; </span><html:text property="jobApplication_textMobile" />&nbsp;&nbsp;

                   <br/><br/><span class="style4"> </span>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     Sex: &nbsp;&nbsp;<html:radio property="jobApplication_radioSex" value="M" />Male&nbsp;&nbsp;
                     <html:radio property="jobApplication_radioSex" value="F"/>Female <br/>

                <p class="style4">
		<strong>Current Professional Details:-</strong><p class="style2">
                    <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp; 
                        Total Experience:&nbsp; </span><html:select property="jobApplication_selectExpYear" style="width: 95px">
                            <html:option value="0">Year</html:option>
                            <html:option value="01">1</html:option>
                            <html:option value="02">2</html:option>
                            <html:option value="02">3</html:option>
                            <html:option value="02">4</html:option>
                            <html:option value="05">5</html:option>
                            <html:option value="06">6</html:option>
                            <html:option value="07">7</html:option>
                            <html:option value="08">8</html:option>
                            <html:option value="09">9</html:option>
                            <html:option value="10">10</html:option>
                </html:select><%--<html:select property="jobApplication_selectExpMonth" style="width: 98px">

                    <html:option value="Month">Month</html:option>
		</html:select>--%><p class="style2">
                    <p class="style2">
		<p class="style4">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Key Skills:&nbsp;
                <html:textarea property="jobApplication_textareaSkill" rows="" cols="" style="width: 326px; height: 63px"></html:textarea><p class="style4">
		<strong>Education Details:-</strong><p class="style4">

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Qualification:&nbsp; <html:select property="jobApplication_selectQualification" style="width: 269px">
                <html:option value="0">Select</html:option>
                <html:option value="BCA">BCA</html:option>
                <html:option value="MCA">MCA</html:option>
                <html:option value="B.Tech/B.E.">B.Tech/B.E.</html:option>
                <html:option value="M.Tech/M.E.">M.Tech/M.E.</html:option>
                <html:option value="BBA">BBA</html:option>
                <html:option value="MBA">MBA</html:option>
                <html:option value="Other">Other</html:option>

		</html:select><p class="style4">
                
                <p class="style4">
		<strong>Upload Resume:</strong>
                <p class="style4">
		&nbsp; Resume Headline:&nbsp;
                <html:text property="jobApplication_textResumeHeadline" style="width: 326px" />
                <p class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Attach Resume:&nbsp;<html:file property="jobApplication_fileAttachResume" /><br />
		
                

                    <html:checkbox property="jobApplication_checkboxValidInfo" />All information is true and valid.<br />
                    <html:checkbox property="jobApplication_checkboxTermCond" />I have
			read and understood and agree to the
                        <html:link page="/html-jsp/term_and_condition.jsp" title="Term_and_condition" target="_blank">
                            <font color="blue"><strong>term and condition</strong></font></html:link>.<br />
			<br />
			<br />
			<br />
			<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<html:submit property="jobApplication_submit" value="Submit" style="width: 112px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<html:reset property="jobApplication_reset" value="Reset" style="width: 111px" /><br />
		</html:form>



		
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
