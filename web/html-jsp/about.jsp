<%-- 
    Document   : about
    Created on : Nov 1, 2010, 1:41:53 PM
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

<!-- #BeginTemplate "../master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>About</title>
<style type="text/css">
 
.style2 {
	text-align: justify;
}
</style>
<!-- #EndEditable -->

<link rel="stylesheet" type="text/css" title="CSS" href="../css/style1.css" />
<style type="text/css">
   
 
.style1 {
	margin-top: 0px;
        margin-left: 0px;
}
.style3 {
	font-size: x-large;
}
</style>
</head>

<body>

<div id="container" style="width: 919px">
	<div id="masthead" style="width: 900px">
		<h1>&nbsp;</h1>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="white" face="'Alien Encounters'">
		<span class="style3">RESOURCE MANAGEMENT SYSTEM</span></font></h3>
	</div>
<!-- Begin Navigation -->
	<div style="position: relative; width: 935px; height: 21px; z-index: 1; " id="layer1" class="style1">
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
            <html:img alt="" src="../images/toolbar.jpg" width="924" height="26" />
	</div>

	<!-- End Masthead -->
	
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->
	<!-- Begin Content -->
	<div id="content" style="width: 910px">
		<!-- #BeginEditable "content" -->
                <html:img src="./images/about.jpg" alt="" height="213" width="413" align="center" />
                <html:img src="../images/about.jpg" alt="" height="213" width="413" align="center"  />
		<h2>About</h2>
		<p><b>Definition:</b> <i>Resource Management Systems (RMS) provide a
		link between resource management
and information technology</i>.

		<p>RMS allow enterprises to automate many aspects of human resource management, with the dual benefits of reducing the workload of the HR department as well as increasing the efficiency of the department by
		standardizing HR processes.

The field of human resources is one that is often overlooked in enterprise management. This situation is aided by the fact that an efficient Human Resources department should function without fanfare. For example, when a project team successfully launches a product on time and within budget it is hailed as a great success. When the HR department manages the administration of the enterprise successfully it can go virtually unnoticed – after all, the Human Resources department is simply expected to work, only attracting attention when there are problems.
.</p>
		<!-- #EndEditable "content" --></div>
	<!-- End Content -->
	<!-- Begin Footer -->
	<div id="footer" style="width: 916px">
            <P><html:link page="/html-jsp/default.jsp">Home</html:link> | <html:link page="/html-jsp/about.jsp">About</html:link> |
                <a href="../html-jsp/news.jsp">News</a> | <html:link page="/html-jsp/portfolio.jsp">Portfolio</html:link>
		| <html:link page="/html-jsp/recuritment.jsp">Recruitment</html:link> |
                <html:link page="/html-jsp/faq.jsp">FAQ</html:link> |
                <html:link page="/html-jsp/contact.jsp">Contact</html:link><br/>
		<span class="gry"><font color="#999999">All rights reserved © 2010 RMS_mygroup2 </font></span>
	</div>

	<!-- End Footer --></div>


</body>



</html:html>
