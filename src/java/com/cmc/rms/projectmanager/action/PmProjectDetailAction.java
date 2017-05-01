/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.cmc.rms.projectmanager.formbean.PmProjectDetailFormBean;
import com.cmc.rms.projectmanager.dto.PmProjectDetailDTO;
import javax.servlet.http.HttpSession;
/**
 *
 * @author A.Ranjan
 */
public class PmProjectDetailAction extends org.apache.struts.action.Action {
    
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
        PmProjectDetailFormBean pdfb=(PmProjectDetailFormBean)form;
        PmProjectDetailDTO pdto=new PmProjectDetailDTO();
        String pmId=pdfb.getTextPmId();
        String pId=pdfb.getTextProjectId();
        String duration=pdfb.getTextDuration();
        String technology=pdfb.getTextTechnology();
        logic=pdto.enterProDetail(pmId, pId, duration, technology);
        request.getSession().invalidate();
        request.getSession().setAttribute("id", pmId);
        

        return mapping.findForward(logic);
    }
}
