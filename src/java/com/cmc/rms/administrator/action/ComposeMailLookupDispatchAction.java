/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.action;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.actions.LookupDispatchAction;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import java.util.*;
import com.cmc.rms.administrator.formbean.ComposeMailFormBean;
import com.cmc.rms.administrator.dto.ComposeMailDTO;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Tonyw@rringle
 */
public class ComposeMailLookupDispatchAction extends LookupDispatchAction {
    
    /* forward name="success" path="" */
    private final static String SUCCESS = "success";
    
    /** Provides the mapping from resource key to method name.
     * @return Resource key / method name map.
     */
    protected Map getKeyMethodMap() {
      Map map = new HashMap();
      map.put("button.send", "send");
      map.put("button.save", "save");
      
      return map;
    }
    
    /** Action called on Add button click
     */
    public ActionForward send(ActionMapping mapping,
          ActionForm form,
          HttpServletRequest request,
          HttpServletResponse response) throws java.lang.Exception {
      // TODO: implement add method
        ComposeMailFormBean cmfb=(ComposeMailFormBean)form;
        String to=cmfb.getTo();
        String from=cmfb.getFrom();
        String subject=cmfb.getSubject();
        String message=cmfb.getMessage();
        String logic;
        ComposeMailDTO cmdto=new ComposeMailDTO();
        logic=cmdto.composeMail(from, to, subject, message);
       request.getSession().invalidate();
       request.getSession().setAttribute("id", from);
        return mapping.findForward(logic);
    }
    
    /** Action called on Edit button click
     */
    public ActionForward save(ActionMapping mapping,
          ActionForm form,
          HttpServletRequest request,
          HttpServletResponse response) throws SQLException {
      // TODO: implement edit method
      ComposeMailFormBean cmfb=(ComposeMailFormBean)form;
        String to=cmfb.getTo();
        String from=cmfb.getFrom();
        String subject=cmfb.getSubject();
        String message=cmfb.getMessage();
        String logic;
        ComposeMailDTO cmdto=new ComposeMailDTO();
        logic=cmdto.saveMail(from, to, subject, message);
       request.getSession().invalidate();
       request.getSession().setAttribute("id", from);
        return mapping.findForward(logic);
    }
 
    
    /* And your JSP would have the following format for submit buttons:

        <html:form action="/test">
            <html:submit property="method">
              <bean:message key="button.add"/>
            </html:submit>
            <html:submit property="method">
              <bean:message key="button.edit"/>
            </html:submit>
            <html:submit property="method">
              <bean:message key="button.delete"/>
            </html:submit>
        </html:form>
    */
}