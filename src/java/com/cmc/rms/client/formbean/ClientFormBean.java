/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.client.formbean;
/*
import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
*/
/**
 *
 * @author Tonyw@rringle
 */
public class ClientFormBean extends org.apache.struts.action.ActionForm {
    
    private String textName=null;
    private String textProjectName=null;
    private String textCompName=null;
    private String textPhone=null;
    private String textEmail=null;
    private String textareaQuery=null;
    private String textDate=null;
    private String textBudget=null;

    public String getTextBudget() {
        return textBudget;
    }

    public void setTextBudget(String textBudget) {
        this.textBudget = textBudget;
    }
    public String getTextProjectName() {
        return textProjectName;
    }

    public void setTextProjectName(String textProjectName) {
        this.textProjectName = textProjectName;
    }



    public String getTextCompName() {
        return textCompName;
    }

    public void setTextCompName(String textCompName) {
        this.textCompName = textCompName;
    }

    public String getTextEmail() {
        return textEmail;
    }

    public void setTextEmail(String textEmail) {
        this.textEmail = textEmail;
    }

    public String getTextName() {
        return textName;
    }

    public void setTextName(String textName) {
        this.textName = textName;
    }

    public String getTextPhone() {
        return textPhone;
    }

    public void setTextPhone(String textPhone) {
        this.textPhone = textPhone;
    }

    public String getTextareaQuery() {
        return textareaQuery;
    }

    public void setTextareaQuery(String textareaQuery) {
        this.textareaQuery = textareaQuery;
    }

    public String getTextDate() {
        return textDate;
    }

    public void setTextDate(String textDate) {
        this.textDate = textDate;
    }

    
}
