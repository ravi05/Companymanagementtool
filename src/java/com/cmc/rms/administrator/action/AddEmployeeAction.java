/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.action;
import com.cmc.rms.administrator.formbean.AddEmployeeFormBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author user
 */
public class AddEmployeeAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "add_employee";
    
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
        AddEmployeeFormBean eefb= (AddEmployeeFormBean)form;
               return mapping.findForward(SUCCESS);
    }
}
