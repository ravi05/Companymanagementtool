/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.cmc.rms.employee.formbean.EditProfileEmployee;
import com.cmc.rms.employee.dto.EditProfileEmployeeDTO;

/**
 *
 * @author Tonyw@rringle
 */
public class EditProfileEmployeeAction extends org.apache.struts.action.Action {
    
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
        EditProfileEmployee epefb=(EditProfileEmployee)form;
         String id=epefb.getEmployeeId();
         String password=epefb.getPassword();
         String email=epefb.getEmail();
         String location=epefb.getLocation();
         String qualification=epefb.getQualification();
         String skill=epefb.getSkill();
         String mobile=epefb.getMobile();
         String logic=null;
         EditProfileEmployeeDTO epedto=new EditProfileEmployeeDTO();
         logic=epedto.editProfile(id,password,email, location, qualification, skill, mobile);
         return mapping.findForward(logic);
    }
}
