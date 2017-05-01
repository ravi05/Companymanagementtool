/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.formbean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author A.Ranjan
 */
public class PmProjectDetailFormBean extends org.apache.struts.action.ActionForm {
private String textPmId=null;
private String textProjectId=null;
private String textTechnology=null;
private String textDuration=null;

    public String getTextDuration() {
        return textDuration;
    }

    public void setTextDuration(String textDuration) {
        this.textDuration = textDuration;
    }

    public String getTextPmId() {
        return textPmId;
    }

    public void setTextPmId(String textPmId) {
        this.textPmId = textPmId;
    }

    public String getTextProjectId() {
        return textProjectId;
    }

    public void setTextProjectId(String textProjectId) {
        this.textProjectId = textProjectId;
    }

    public String getTextTechnology() {
        return textTechnology;
    }

    public void setTextTechnology(String textTechnology) {
        this.textTechnology = textTechnology;
    }

}
