/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import com.cmc.rms.administrator.formbean.NewsFormBean;
import com.cmc.rms.administrator.dto.NewsDTO;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tonyw@rringle
 */
public class NewsAction extends org.apache.struts.action.Action {
    
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
        NewsFormBean nfb=(NewsFormBean)form;
        String newsTitle=nfb.getNewsTitle();
        String newsArea=nfb.getNewsArea();
        NewsDTO ndto=new NewsDTO();
        String logic=ndto.newsUpdate(newsTitle, newsArea);
        request.getSession().invalidate();
        request.getSession().setAttribute("id", "1");

        return mapping.findForward(logic);
    }
}
