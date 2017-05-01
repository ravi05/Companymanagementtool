<%--
    Document   : mail
    Created on : Nov 28, 2010, 11:54:59 PM
    Author     : Tonyw@rringle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page import="java.sql.*;" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Mail</title>
</head>

<body>
    <%String id=request.getParameter("id"); %>
        <p><strong>Mail:</strong></p>
        <%String linkCM="/html-jsp/composeMail.jsp?id="+id;%>
        <%String linkIB="/html-jsp/inbox.jsp?id="+id;%>
        <%String linkS="/html-jsp/sent.jsp?id="+id;%>
        <%String linkD="/html-jsp/draft.jsp?id="+id;%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<html:link page="<%=linkCM%>">Compose Mail</html:link><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<html:link page="<%=linkIB%>">Inbox</html:link><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<html:link page="<%=linkS%>">Sent</html:link><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<html:link page="<%=linkD%>">Draft</html:link>
</body>
</html:html>
