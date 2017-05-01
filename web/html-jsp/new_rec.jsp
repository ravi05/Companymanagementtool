<%-- 
    Document   : new_rec
    Created on : Nov 1, 2010, 2:30:59 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html:html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>New Recuritment</title>
<style type="text/css">
.style1 {
	font-size: medium;
}
</style>
</head>

<body>
    <html:link page="/html-jsp/hr_inside.jsp">back</html:link><br><br>
<span class="style1"><strong>Required Post:</strong></span>
<html:form action="/recruitment">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Job Type&nbsp;<html:select property="new_rec_selectJobType" style="width: 100px">
                    <html:option value="userType" >Select User Type</html:option>
                    <html:option value="Software Engineer">Software Engineer</html:option>
                    <html:option value="Project Manager">Project Manager</html:option>
                    <html:option value="Human Resource">Human Resource</html:option>
                    <html:option value="System Analyst">System Analyst</html:option>
                    <html:option value="System Designer">System Designer</html:option>
                    <html:option value="System Builder">System Builder</html:option>
                    <html:option value="System Tester">System Tester</html:option>

                    </html:select> <br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    Department&nbsp;<html:select property="new_rec_selectDept" style="width: 100px">
                    <html:option value="userType" >Select Department</html:option>
                    <html:option value="Mobile Apps">Mobile Applications</html:option>
                    <html:option value="Win Apps">Windows Applications</html:option>
                    <html:option value="Web Apps">Web Applications</html:option>
                    <html:option value="SEZ">Special Economic Zone</html:option>

                    </html:select> <br><br>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Total No. Of Post&nbsp; <html:text property="new_rec_textTotalPost"/><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Required Skill&nbsp; <html:text property="new_rec_textSkill" /><br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Qualification&nbsp; <html:text property="new_rec_textQualification" /><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Salary:&nbsp; <html:text property="new_rec_sal" /><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

Age Limit&nbsp;<html:select property="new_rec_selectMinAge" style="width: 50px">
                    <html:option value="18" >18</html:option>
                    <html:option value="19">19</html:option>
                    <html:option value="20">20</html:option>
                    <html:option value="21">21</html:option>
                    <html:option value="22">22</html:option>
                    <html:option value="23">23</html:option>
                    <html:option value="24">24</html:option>
                    <html:option value="25">25</html:option>
                    <html:option value="26">26</html:option>
                    <html:option value="27">27</html:option>
                    <html:option value="28">28</html:option>
                    <html:option value="29">29</html:option>
                    <html:option value="30">30</html:option>
                    <html:option value="31">31</html:option>
                    <html:option value="32">32</html:option>
                    <html:option value="33">33</html:option>
                    <html:option value="34">34</html:option>
                    <html:option value="35">35</html:option>
</html:select>&nbsp;to&nbsp;<html:select property="new_rec_selectMaxAge" style="width: 50px">
                     <html:option value="19">19</html:option>
                    <html:option value="20">20</html:option>
                    <html:option value="21">21</html:option>
                    <html:option value="22">22</html:option>
                    <html:option value="23">23</html:option>
                    <html:option value="24">24</html:option>
                    <html:option value="25">25</html:option>
                    <html:option value="26">26</html:option>
                    <html:option value="27">27</html:option>
                    <html:option value="28">28</html:option>
                    <html:option value="29">29</html:option>
                    <html:option value="30">30</html:option>
                    <html:option value="31">31</html:option>
                    <html:option value="32">32</html:option>
                    <html:option value="33">33</html:option>
                    <html:option value="34">34</html:option>
                    <html:option value="35">35</html:option>
                    </html:select>
                    <br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Experience&nbsp;<html:select property="new_rec_selectExperience" style="width: 70px">
                    <html:option value="Fresher" >Fresher</html:option>
                    <html:option value="1-2">1-2</html:option>
                    <html:option value="2-3">2-3</html:option>
                    <html:option value="3-4">3-4</html:option>
                    <html:option value="4-5">4-5</html:option>
                    <html:option value="5-6">5-6</html:option>
                    <html:option value="6-7">6-7</html:option>
                    <html:option value="7-8">7-8</html:option>
                    <html:option value="8-9">8-9</html:option>
                    <html:option value="9-10">9-10</html:option>
                    <html:option value="10 or more">10 or more</html:option>
                    </html:select><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    Job Description:&nbsp;<html:textarea property="new_rec_textareaDiscription"/>

<html:submit property="new_rec_Button" value="Published" style="width: 131px"/>&nbsp;&nbsp;&nbsp;
<html:reset/>
</html:form>
</body>

</html:html>
