/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.client.action;
import com.cmc.rms.client.formbean.ClientFormBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.cmc.rms.client.dto.ClientDTO;
//import javax.servlet.http.HttpSession;
/**
 *
 * @author Tonyw@rringle
 */
public class ClientAction extends org.apache.struts.action.Action {
    
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
        ClientFormBean cfb=(ClientFormBean)form;
        String name=cfb.getTextName();
        String projName=cfb.getTextProjectName();
        String comp_name=cfb.getTextCompName();
        String phone=cfb.getTextPhone();
        String query=cfb.getTextareaQuery();
        String email=cfb.getTextEmail();
        String budget=cfb.getTextBudget();
        String date=cfb.getTextDate();
        String logic=null;
        ClientDTO cdto=new ClientDTO();
        logic=cdto.clientDetail(name, email,date, projName,phone, budget, comp_name, query);
        

         request.getSession().invalidate();
         request.getSession().setAttribute("name",name);
         return mapping.findForward(logic);

    }
}
