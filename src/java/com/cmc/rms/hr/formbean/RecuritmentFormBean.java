/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.hr.formbean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Tonyw@rringle
 */
public class RecuritmentFormBean extends org.apache.struts.action.ActionForm {
    
    private String JSEO01=null;

    public String getJSEO01() {
        return JSEO01;
    }

    public void setJSEO01(String JSEO01) {
        this.JSEO01 = JSEO01;
    }


}