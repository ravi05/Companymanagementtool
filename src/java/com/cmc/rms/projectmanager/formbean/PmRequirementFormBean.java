/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.formbean;

//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.struts.action.ActionErrors;
//import org.apache.struts.action.ActionMapping;
//import org.apache.struts.action.ActionMessage;

/**
 *
 * @author A.Ranjan
 */
public class PmRequirementFormBean extends org.apache.struts.action.ActionForm {
    
    
private String textProId=null;
private String textSkill=null;
private String selectDesg=null;
private String textPmId=null;
private String textQty=null;

    public String getTextQty() {
        return textQty;
    }

    public void setTextQty(String textQty) {
        this.textQty = textQty;
    }

    public String getTextPmId() {
        return textPmId;
    }

    public void setTextPmId(String textPmId) {
        this.textPmId = textPmId;
    }

    public String getSelectDesg() {
        return selectDesg;
    }

    public void setSelectDesg(String selectDesg) {
        this.selectDesg = selectDesg;
    }

    public String getTextProId() {
        return textProId;
    }

    public void setTextProId(String textProId) {
        this.textProId = textProId;
    }

    public String getTextSkill() {
        return textSkill;
    }

    public void setTextSkill(String textSkill) {
        this.textSkill = textSkill;
    }
}
