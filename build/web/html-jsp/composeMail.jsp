<%--
    Document   : composeMail
    Created on : Nov 26, 2010, 11:52:59 PM
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
<title>Compose Mail</title>
</head>
<script type="text/javascript">
function composeMailValidate(objForm){

if(objForm.from.value.length==0){
alert("Please enter sender ID");
objForm.from.focus();
return false;
}

if(objForm.to.value.length==0){
alert("Please enter receiver id");
objForm.to.focus();
return false;
}

return true;
}
</script>
<body>
    <%String id=request.getParameter("id");%>
     <%String linkB="/html-jsp/mail.jsp?id="+id;%>
    <html:link page="<%=linkB%>">back</html:link><br/>

    
        <p><strong>Compose Mail:</strong></p>
        <table align="center" border="1" bgcolor="#ADDFFF" width="800px"><tr><td><br/>
        <%String link="composeMail.do?id="+id;%>
        <html:form method="post" action="<%=link%>" onsubmit="return composeMailValidate(this);">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            From &nbsp;<html:text property="from" style="width: 600px" readonly="true" value="<%=id%>"/><br/><br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            To &nbsp;<html:text property="to" style="width: 600px"/><br/><br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Subject &nbsp;<html:text property="subject" style="width: 600px"/><br/><br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Message &nbsp;<html:textarea property="message" style="width: 600px; height: 160px;"/><br/><br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <html:submit property="dispatch" value="Send">
            
            </html:submit>&nbsp;&nbsp;&nbsp;&nbsp;
            <html:submit property="dispatch" value="Save" >
                
            </html:submit>&nbsp;&nbsp;&nbsp;&nbsp;
            <html:reset value="Reset"/>
            


        </html:form>
                </td></tr></table>


</body>
</html:html>
