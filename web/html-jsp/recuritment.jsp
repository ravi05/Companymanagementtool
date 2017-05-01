<%--
    Document   : default
    Created on : Nov 1, 2010, 11:52:59 AM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.cmc.rms.hr.db.NewRecruitmentDB;" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<!-- #BeginTemplate "../master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>Recruitments</title>
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

<%
String sub=(String)session.getAttribute("i");
System.out.println(sub);
if(sub!=null){

%>
<script type="text/javascript">
    
 alert("Data Submitted successfully!!");

</script>
<%}%>
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
            <html:img src="./images/toolbar.jpg" width="924" height="26"></html:img>
            <html:img src="../images/toolbar.jpg" width="924" height="26"></html:img>
	</div>

	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->
	<!-- Begin Content -->
	<div id="content" style="width: 910px">
		<!-- #BeginEditable "content" -->
		<h2>Recruitments</h2>
		<p>Here advertise our required po.........</p>
		<h3>Jobs List Title</h3>

                
                <html:form action="/recruitmentNew">
                <%
NewRecruitmentDB nrd=new NewRecruitmentDB();
                ResultSet rs=nrd.getResult();
if(rs!=null)
    {
%>
                <ul>
     <%while(rs.next()) {String id=rs.getString(1);
String link="recruitmentNew.do?jobid="+id;
     String date=rs.getString("date_posting");
     date=(new StringTokenizer(date)).nextToken();
     StringTokenizer st=new StringTokenizer(date,"-");
     String year=st.nextToken();
     String month=st.nextToken();
     String day=st.nextToken();
     date=day+"/"+month+"/"+year;

     %>


     
     <%--<html:radio property="JSEO01" value="JSE01"/>--%><li>Date of Posting:<%=date%> <br/>Post:&nbsp;&nbsp;&nbsp;<%=rs.getString("job_title")%><br />
         	Skill:&nbsp;&nbsp;&nbsp;<%= rs.getString("skill")%><br/>Description:&nbsp;&nbsp;&nbsp;<%=rs.getString("job_description") %><br/>Department:<%=rs.getString("dept")%><br/>Salary:<%=rs.getString("salary")%><br/>No.of Openings:<%=rs.getString("openings")%> </li>
     <html:link action="<%=link%>">Apply Now</html:link>
     <br/><br/>
     <%--<a href="../recruitmentNew.do?jobid=<%=id%>">Apply Now</a>--%>
     
     <%}%>
                </ul>
<%}%>
                
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   </p>
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
