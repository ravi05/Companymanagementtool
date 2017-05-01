/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.action;
import com.cmc.rms.employee.formbean.JobApplicationFormBean;
import com.cmc.rms.employee.dto.JobApplicationDTO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Tonyw@rringle
 */
public class JobApplicationAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "job_Application";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        JobApplicationFormBean jafb=(JobApplicationFormBean)form;
        String name=jafb.getJobApplication_textName();
        String eMail=jafb.getJobApplication_textEmailId();
        String cuurentLocation=jafb.getJobApplication_selectLocation();
        //String country=jafb.getJobApplication_selectCountry();
        String mobile=jafb.getJobApplication_textMobile();
        String exp=jafb.getJobApplication_selectExpYear();
        String skill=jafb.getJobApplication_textareaSkill();
        String qualification=jafb.getJobApplication_selectQualification();
        String attachResume=jafb.getJobApplication_fileAttachResume();
        String resumeHeadline=jafb.getJobApplication_textResumeHeadline();
        String jobID=jafb.getJobApplication_textJobID();
        String curLoc=jafb.getJobApplication_selectLocation();
        String sex=jafb.getJobApplication_radioSex();
        String logic=null;
        JobApplicationDTO jadto=new JobApplicationDTO();
        //logic=jadto.clientDetail(name, eMail, cuurentLocation,curLoc, mobile,exp ,skill, qualification, attachResume, resumeHeadline, jobID,sex);
        return mapping.findForward(logic);
    }
}
