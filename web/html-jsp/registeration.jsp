<%--
    Document   : registration
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : Tonywarringle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@page import="java.util.*" %>
<%@page import="java.sql.*;" %>
<%@page import="com.cmc.rms.employee.db.EmployeeDetail;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>
<!-- #BeginTemplate "../master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Registeration Form</title>
<style type="text/css">
.style1 {
	margin-left: 0px;
}
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

function registerValidate(objForm){

if(objForm.registeration_password.value.length<6){
alert("Password should be of more than 6 characters!!");
objForm.registeration_password.focus();
return false;
}

if(objForm.registeration_ConfirmPassword.value.length==0 ){

alert("Please enter confirm password!!");
objForm.registeration_ConfirmPassword.focus();
return false;
}
if(objForm.registeration_password.value!=objForm.registeration_ConfirmPassword.value)
    {
        alert("Password should be same");
        objForm.registeration_password.focus();
        objForm.registeration_ConfirmPassword.focus();
        return false;
    }
if(objForm.registeration_selectSex.selectedIndex==0 ){

alert("Please select your sex");
objForm.registeration_selectSex.focus();
return false;
}
if(objForm.registeration_selectAge.selectedIndex==0 ){

alert("Please select your age");
objForm.registeration_selectAge.focus();
return false;
}
if(objForm.registeration_selectPost.selectedIndex==0 ){
alert("Please select your post");
objForm.registeration_selectPost.focus();
return false;
}
if(objForm.registeration_textareaCurrentAddress.value.length==0){
alert("Please enter your address");
objForm.registeration_textareaCurrentAddress.focus();
return false;
}
if(isNaN(objForm.registeration_textMobileNo.value)||objForm.registeration_textMobileNo.value.indexOf(" ")!=-1 ){
alert("Please Enter numeric value !!");
objForm.registeration_textMobileNo.focus();
return false;
}
if(objForm.registeration_textMobileNo.value.length!=10 ){

alert("Please enter 10 digit mobile no !!");
objForm.registeration_textMobileNo.focus();
return false;
}
if(objForm.registeration_textMobileNo.value.length==0 ){

alert("Please enter mobile no !!");
objForm.registeration_textMobileNo.focus();
return false;
}
if ((objForm.registeration_textEmailId.value==null)||(objForm.registeration_textEmailId.value=="")){
		alert("Please Enter your Email ID")
		objForm.registeration_textEmailId.focus()
		return false
	}
	if (echeck(objForm.registeration_textEmailId.value)==false){
		objForm.registeration_textEmailId.value=""
		objForm.registeration_textEmailId.focus()
		return false
	}

if(objForm.registeration_selectChooseYourQuestion.selectedIndex==0 ){

alert("Please select your question");
objForm.registeration_selectAge.focus();
return false;
}
if(objForm.registeration_textYourAnswer.value.length==0 ){

alert("Please enter your Answer");
objForm.registeration_textYourAnswer.focus();
return false;
}
if ( ( objForm.registeration_checkboxTrueAndValid.checked == false )) {

    alert("Please check your all information is valid  !!");
    objForm.registeration_checkboxTrueAndValid.focus();

    return false;
}
if ( ( objForm.registeration_checkboxTermCond.checked == false )) {

    alert("Please check you are agree with term and conditions  !!");

    objForm.registeration_checkboxTermCond.focus();
    return false;
}

return true;
}

</script>

</head>
<%--
<%
String id1=(String)session.getAttribute("id");
if(id1==null)
    {
%>
<jsp:forward page="/html-jsp/default.jsp"/>
<%}%>

--%><body>

<div id="container" style="width: 919px">
	<div id="masthead" style="width: 900px">
		<h1>&nbsp;</h1>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="white" face="'Alien Encounters'">
		<span class="style3">RESOURCE MANAGEMENT SYSTEM</span></font></h3>
	</div>
	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->

	<!-- Begin Content -->
	<div id="content" style="width: 910px">
		<!-- #BeginEditable "content" -->

                <%String id=(String)session.getAttribute("id");%>
                <%
                EmployeeDetail ed=new EmployeeDetail();
                String name=ed.getEmpName(id);
                System.out.println(name);
                StringTokenizer st=new StringTokenizer(name," ");
                String nameF=null;
                String nameL=null;
                while(st.hasMoreElements())
                    {
                    nameF=st.nextToken();
                    if(st.hasMoreElements()){
                    nameL=st.nextToken();
                    }
                    }

         %>

		<h2 class="style2">Registeration Form:-</h2>
		<p>
		<html:form action="/registeration" method="POST" onsubmit="return registerValidate(this);">
                   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name<strong class="style1"> </strong>
                <html:text readonly="true" value="<%=nameF%>" property="registeration_textFirstName" style="width: 243px" /><p><strong>&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Last Name&nbsp;&nbsp;

                <html:text readonly="true" value="<%=nameL%>" property="registeration_textLastName" style="width: 243px" /><p>
		<strong>&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;Employee ID&nbsp;
                <html:text readonly="true" value="<%=id%>" property="registeration_textEmployeeId" style="width: 243px" /><p><strong>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;Password<strong>&nbsp;&nbsp;</strong><html:password property="registeration_password" style="width: 243px; height: 17px;" /><p>
		&nbsp;&nbsp;Confirm Password&nbsp;<html:password property="registeration_ConfirmPassword" style="width: 243px; height: 17px;" /><p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Sex


                <html:select property="registeration_selectSex" style="width: 81px; height: 23px;">
                    <html:option value="0">Select</html:option>
                    <html:option value="M">Male</html:option>
                    <html:option value="F"> Female</html:option>
			</html:select> &nbsp;Age&nbsp;


                        <html:select property="registeration_selectAge" style="width: 81px; height: 23px;">
                            <html:option value="0">Age</html:option>

                            <html:option value="18">18</html:option>
			<html:option value="19">19</html:option>
			<html:option value="20">20</html:option>
                        <html:option value="21">21</html:option>
                        <html:option value="22">22</html:option>
                        <html:option value="23">23</html:option>
                        <html:option value="24">24</html:option>
                        <html:option value="25">25</html:option>
                        <html:option value="26">26</html:option>
                        <html:option value="28">28</html:option>
                        <html:option value="29">29</html:option>
                        <html:option value="30">30</html:option>
                        <html:option value="31">31</html:option>
                        <html:option value="32">32</html:option>
                        <html:option value="33">33</html:option>
                        <html:option value="34">34</html:option>
                        <html:option value="35">35</html:option>
                        <html:option value="36">36</html:option>
                        <html:option value="37">37</html:option>
                        <html:option value="38">38</html:option>
                        <html:option value="39">39</html:option>
                        <html:option value="40">40</html:option>
                        <html:option value="41">41</html:option>
                        <html:option value="42">42</html:option>
                        <html:option value="43">43</html:option>
                        <html:option value="44">44</html:option>
                        <html:option value="45">45</html:option>
                        <html:option value="46">46</html:option>
                        <html:option value="47">47</html:option>

                </html:select><p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--                Post<strong>&nbsp;&nbsp;
                  <html:select property="registeration_selectPost" style="width: 328px; height: 23px;">
                        <html:option value="0">Select</html:option>

                        <html:option value="s/wEng">Sr. S/W Eng.</html:option>

                        <html:option value="DBA">Database Administrator</html:option>
                        <html:option value="seo">S.E.O.</html:option>
 	 		<option>Team Leader</option>
			<option>Reseptionist</option>

			<option>Network Manager</option>
			<option>Marketing Manager</option>  -->
			</html:select><p>
<!--		&nbsp;&nbsp;&nbsp;&nbsp; Date of joining<strong>&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <html:select property="registeration_selectDateOfJoinDay" style="width: 54px; height: 23px;">
                    <html:option value="0">Day</html:option>

                </html:select><html:select property="registeration_selectDateOfJoinMonth" style="width: 62px; height: 23px;">
                    <html:option value="0">Month</html:option>
                </html:select><html:select property="registeration_selectDateOfJoinYear" style="width: 81px; height: 23px;">
                    <html:option value="0">Year</html:option>
			</html:select><p>-->
		Current Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <html:textarea property="registeration_textareaCurrentAddress" cols="" rows="" style="width: 240px; height: 40px"></html:textarea><p>


		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile No&nbsp;
                        <html:text property="registeration_textMobileNo" style="width: 111px" value="10 digit no" /><p>

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email ID&nbsp;&nbsp;&nbsp;
                <html:text property="registeration_textEmailId" style="width: 218px" value="abc@rmc_tg2.com" />&nbsp;
		<p>
		Choose your Question&nbsp;&nbsp;
                <html:select property="registeration_selectChooseYourQuestion" style="width: 305px">
                    <html:option value="0">select</html:option>

                    <html:option value="CompName">Your First Company Name</html:option>
                    <html:option value="nickName">Your Nick Name</html:option>
                    <html:option value="schoolName">Your First School Name</html:option>
		</html:select><p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Your answer&nbsp;&nbsp;&nbsp;
                <html:text property="registeration_textYourAnswer" style="width: 302px" /><br/>


                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:checkbox property="registeration_checkboxTrueAndValid" />All information is true and valid.<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<html:checkbox property="registeration_checkboxTermCond" />I have
			read and understood and agree to the<strong> <html:link page="/html-jsp/term_and_condition.jsp" title="Term_and_condition" target="_blank"><font color="blue">term and condition</font></html:link>.<br /></strong><br/>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><html:submit property="registration_submit" value="Submit" style="width: 75px" /></strong>&nbsp;&nbsp;&nbsp;
                <html:reset property="registration_reset" value="Reset" style="width: 76px" /><br />
			<br />
			<br />
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
        </html:form>

		<!-- #EndEditable "content" --></div>
	<!-- End Content -->

	<!-- Begin Footer -->
	<div id="footer" style="width: 916px">
      	<span class="gry"><font color="#999999">All rights reserved © 2010 RMS_mygroup2 </font></span>
	</div>

	<!-- End Footer --></div>
<!-- End Container -->

</body>

<!-- #EndTemplate -->

</html:html>
