<%--
    Document   : message
    Created on : Nov 28, 2010, 11:54:59 PM
    Author     : Tonyw@rringle

--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.cmc.rms.administrator.db.ComposeMailDB;" %>
<%@page import="com.cmc.rms.administrator.formbean.LoginFormBean;" %>
<html:html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Message</title>
    </head>

    <body>
<%--<html:link page="/html-jsp/inbox.jsp">back to message</html:link><br/>--%>
 <p><strong>Message:</strong></p>
                <%String message=request.getParameter("message"); %>

                <h4><%=message%></h4>
              
                
    </body>

</html:html>
