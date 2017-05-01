/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.action;
import com.cmc.rms.administrator.formbean.PasswordRecoveryFormBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.cmc.rms.administrator.dto.PasswordRecoveryDTO;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tonyw@rringle
 */
public class PasswordRecoveryAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "password_Recovery";
    
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
        PasswordRecoveryFormBean prfb=(PasswordRecoveryFormBean)form;
        String id=prfb.getPasswordRecoveryForm_textEmpId();
        String question=prfb.getPasswordRecoveryForm_selectQuestion();
        String answer=prfb.getPasswordRecoveryForm_textAnswer();
        System.out.println(id);
        PasswordRecoveryDTO prdto=new PasswordRecoveryDTO();
        String pass=prdto.passwordRecover(id, question, answer);
                System.out.println("pass:"+pass);
        String logic=null;
        if(pass.equals("fail")){
        logic="fail";
                System.out.println("pass:"+logic);
        }
        else{
            logic="password_Recovery";
        }
        request.getSession().invalidate();
        request.getSession().setAttribute("pass", pass);
        
        return mapping.findForward(logic);
    }
}
