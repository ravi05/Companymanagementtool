/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.action;
import com.cmc.rms.projectmanager.formbean.PmRequirementFormBean;
import com.cmc.rms.projectmanager.dto.PmRequirementDTO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author A.Ranjan
 */
public class PmRequirementAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
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

            String logic=null;
            PmRequirementFormBean prfb=(PmRequirementFormBean)form;
            String proId=prfb.getTextProId();
            String skill=prfb.getTextSkill();
            String desg=prfb.getSelectDesg();
            String pmId=prfb.getTextPmId();
            String req_no=prfb.getTextQty();
            PmRequirementDTO prd=new PmRequirementDTO();
            logic=prd.insertRequirement(desg, req_no, pmId, proId,skill);
            return mapping.findForward(logic);
    }
}
