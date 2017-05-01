<%-- 
    Document   : news
    Created on : Nov 1, 2010, 1:26:00 AM
    Author     : tonyw@rringle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page import="java.sql.*;" %>
<%@page import="com.cmc.rms.administrator.db.NewsDB;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<!-- #BeginTemplate "../master.dwt" -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- #BeginEditable "doctitle" -->
<title>News</title>
<!-- #EndEditable -->
<link rel="stylesheet" type="text/css" title="CSS" href="../css/style1.css" media="screen" />
<style type="text/css">
.style1 {
	margin-top: 1px;
        margin-left: 9px;
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

            <html:img src="../images/toolbar.jpg" width="924" height="26"></html:img>
	</div>

	<!-- End Masthead -->
	<!-- Begin Navigation -->
	<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>

	<!-- End Navigation -->
	<!-- Begin Content -->
	<div id="content" style="width: 910px">

		<!-- #BeginEditable "content" -->
		<h2>News</h2>
		
                <%
               NewsDB ndb=new NewsDB();
               ResultSet rs=ndb.getNews();
               if(rs!=null)
                   {
%>

		
                    <%while(rs.next())

                       {

    %>

    <li>             <strong>&nbsp;&nbsp;&nbsp;<%=rs.getString("title")%><br/></strong>
                            &nbsp;&nbsp;&nbsp;<%=rs.getDate("newsdate")%><br/>
                            &nbsp;&nbsp;&nbsp;<%=rs.getString("news")%><br/><hr>

        <%--
			<li><span class="style_bold"><%=rs.getString("title")%></span><br />
                            <span class="style_italic"><%=rs.getDate("newsdate")%></span><br />
                            <span class="style_italic"><%=rs.getString("news")%></span><br />

			</li><hr>--%>
			
		
                     <%}%>   <%}%>
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
