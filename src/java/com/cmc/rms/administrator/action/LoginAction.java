/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.action;
import com.cmc.rms.administrator.formbean.LoginFormBean;
import com.cmc.rms.administrator.dto.LoginDTO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tonyw@rringle
 */
public class LoginAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    //private static final String SUCCESS = "success";
    
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
        LoginFormBean lfb=(LoginFormBean)form;
        String id=lfb.getTextName();
        String password=lfb.getPasswordAll();
        String desg=lfb.getSelectType();
        //String selectT=lfb.getSelectType();
        String logic=null;
//        if(id.equals(password))
//        {
//            logic="success";
//        }
//        else
//        {
//            logic="fail";
//        }
        LoginDTO lDTO=new LoginDTO();
        logic=lDTO.checkUser(id, password,desg);
         HttpSession session=null;
         request.getSession().setAttribute("id", id);
        //TODO insert code
        System.out.println(logic);
        return mapping.findForward(logic);
    }
}
