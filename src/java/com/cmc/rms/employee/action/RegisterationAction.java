/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.action;
import com.cmc.rms.employee.formbean.RegisterationFormBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.cmc.rms.employee.dto.RegisterationDTO;
import javax.servlet.http.HttpSession;
/**
 *
 * @author A.Ranjan
 */
public class RegisterationAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "registered";
    
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
        RegisterationFormBean rfb=(RegisterationFormBean)form;
        String nameF=rfb.getRegisteration_textFirstName();
        String nameL=rfb.getRegisteration_textLastName();
        String id=rfb.getRegisteration_textEmployeeId();
        String password=rfb.getRegisteration_password();
        String passwordConfirm=rfb.getRegisteration_ConfirmPassword();
        String sex=rfb.getRegisteration_selectSex();
        String age=rfb.getRegisteration_selectAge();
        String post=rfb.getRegisteration_selectPost();
        String dojD=rfb.getRegisteration_selectDateOfJoinDay();
        String dojM=rfb.getRegisteration_selectDateOfJoinMonth();
        String dojY=rfb.getRegisteration_selectDateOfJoinYear();
        String currentAdd=rfb.getRegisteration_textareaCurrentAddress();
        String mobile=rfb.getRegisteration_textMobileNo();
        String email=rfb.getRegisteration_textEmailId();
        String question=rfb.getRegisteration_selectChooseYourQuestion();
        String answer=rfb.getRegisteration_textYourAnswer();
        String logic=null;
        RegisterationDTO rdto=new RegisterationDTO();
        logic=rdto.registerEmp(nameF, nameL, id, password, passwordConfirm, sex, age, post, dojD, dojM, dojY, currentAdd, mobile, email, question, answer);
        request.getSession().invalidate();
        request.getSession().setAttribute("id", id);
       //  request.getSession().invalidate();
        return mapping.findForward(logic);
    }
}
