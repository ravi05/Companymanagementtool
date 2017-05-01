/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.hr.formbean;

//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.struts.action.ActionErrors;
//import org.apache.struts.action.ActionMapping;
//import org.apache.struts.action.ActionMessage;

/**
 *
 * @author A.Ranjan
 */
public class CandidatesAppliedFormBean extends org.apache.struts.action.ActionForm {
    
    private String selectJobId=null;

    public String getSelectJobId() {
        return selectJobId;
    }

    public void setSelectJobId(String selectJobId) {
        this.selectJobId = selectJobId;
    }

}
