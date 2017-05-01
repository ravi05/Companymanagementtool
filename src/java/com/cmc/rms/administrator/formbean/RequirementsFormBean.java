/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.formbean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author A.Ranjan
 */
public class RequirementsFormBean extends org.apache.struts.action.ActionForm {
    private String requirement_textId=null;
    private String requirement_textDateSubmitedFrom=null;
    private String requirement_textDateSubmitedTo=null;
    private String requirement_textAsignTo=null;
    private String requirement_textStatus=null;

    public String getRequirement_textAsignTo() {
        return requirement_textAsignTo;
    }

    public void setRequirement_textAsignTo(String requirement_textAsignTo) {
        this.requirement_textAsignTo = requirement_textAsignTo;
    }

    public String getRequirement_textDateSubmitedFrom() {
        return requirement_textDateSubmitedFrom;
    }

    public void setRequirement_textDateSubmitedFrom(String requirement_textDateSubmitedFrom) {
        this.requirement_textDateSubmitedFrom = requirement_textDateSubmitedFrom;
    }

    public String getRequirement_textDateSubmitedTo() {
        return requirement_textDateSubmitedTo;
    }

    public void setRequirement_textDateSubmitedTo(String requirement_textDateSubmitedTo) {
        this.requirement_textDateSubmitedTo = requirement_textDateSubmitedTo;
    }

    public String getRequirement_textId() {
        return requirement_textId;
    }

    public void setRequirement_textId(String requirement_textId) {
        this.requirement_textId = requirement_textId;
    }

    public String getRequirement_textStatus() {
        return requirement_textStatus;
    }

    public void setRequirement_textStatus(String requirement_textStatus) {
        this.requirement_textStatus = requirement_textStatus;
    }


}
