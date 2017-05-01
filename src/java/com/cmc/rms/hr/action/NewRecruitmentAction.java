/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.hr.action;
import com.cmc.rms.hr.formbean.NewRecruitmentFormBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.cmc.rms.hr.dto.NewRecruitmentDTO;
/**
 *
 * @author Tonyw@rringle
 */
public class NewRecruitmentAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "new_recruitment";
    
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
        NewRecruitmentFormBean nrfb=(NewRecruitmentFormBean)form;
        String jobTitle=nrfb.getNew_rec_selectJobType();
        String opening=nrfb.getNew_rec_textTotalPost();
        //String postingDate1=nrfb.getNew_rec_selectPostingDate1();
        //String postingDate2=nrfb.getNew_rec_selectPostingDate2();
        //String postingDate3=nrfb.getNew_rec_selectPostingDate3();
        String skill=nrfb.getNew_rec_textSkill();
        String ageLimit1=nrfb.getNew_rec_selectMinAge();
        String ageLimit2=nrfb.getNew_rec_selectMaxAge();
        String exp=nrfb.getNew_rec_selectExperience();
        String jobDiscription=nrfb.getNew_rec_textareaDiscription();
        String sal=nrfb.getNew_rec_sal();
        String dept=nrfb.getNew_rec_selectDept();
        String logic=null;
        NewRecruitmentDTO nrdto=new NewRecruitmentDTO();
        logic=nrdto.newRecruitment(jobTitle, opening, skill, ageLimit1, ageLimit2, exp,jobDiscription,sal,dept);
        //  logic=nrdto.newRecruitment(jobTitle, opening, postingDate1, postingDate2, postingDate3, skill, ageLimit1, ageLimit2, exp) ;
        return mapping.findForward(logic);
    }
}
