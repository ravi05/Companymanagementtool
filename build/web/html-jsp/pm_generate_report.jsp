<%-- 
    Document   : pm_generate_report
    Created on : Nov 1, 2010, 2:59:33 PM
    Author     : A.Ranjan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Generate Reports</title>
<style type="text/css">
.style1 {
	font-size: medium;
}
</style>
</head>

<body>
    <html:link page="/html-jsp/project_manager_inside.jsp">back</html:link>
<h3 class="style1">Report Generation Form</h3>
<html:form action="/pmReport">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Project ID&nbsp; <html:text property="pojectManagerReport_projID"/><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;
Project Name&nbsp; <html:text property="pojectManagerReport_projNmae"/><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Technologies&nbsp; <html:text property="pojectManagerReport_tech"/><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Duration&nbsp; <html:select property="pojectManagerReport_Select1" style="width: 53px">
    <html:option  value="Date">Date</html:option>
</html:select><html:select property="pojectManagerReport_Select2" style="width: 66px">
	<option selected="selected">Month</option>
</html:select><html:select property="pojectManagerReport_Select3" style="width: 85px">
            <html:option value="Year">Year</html:option>
</html:select> to <html:select property="pojectManagerReport_Select4"style="width: 53px">
            <html:option  value="Date">Date</html:option>
</html:select><html:select property="pojectManagerReportSelect5" style="width: 66px">
            <html:option value="Month">Month</html:option>
</html:select><html:select property="pojectManagerReport_Select6" style="width: 85px">
            <html:option value="Year">Year</html:option>
	</html:select><br />
<br />
No. Of Employee&nbsp; <html:text property="pojectManagerReport_noEmp"/><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Budget&nbsp; <html:text property="pojectManagerReport_budget"/><br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Formats&nbsp;
<html:checkbox  property="pojectManagerReport_Checkbox1" />pdf
<html:checkbox property="pojectManagerReport_Checkbox2" />html
<html:checkbox property="pojectManagerReport_Checkbox3" />word<br />
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<html:submit property="projectManagerReport_generateReport" value="Generate Report"/>
</html:form>
</body>

</html:html>
