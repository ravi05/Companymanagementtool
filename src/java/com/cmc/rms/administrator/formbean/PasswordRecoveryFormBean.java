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
 * @author Tonyw@rringle
 */
public class PasswordRecoveryFormBean extends org.apache.struts.action.ActionForm {
    
    private String passwordRecoveryForm_textUserId=null;
    private String passwordRecoveryForm_textEmailId=null;
    private String passwordRecoveryForm_textEmpId=null;
    private String passwordRecoveryForm_selectQuestion=null;
    private String passwordRecoveryForm_textAnswer=null;

    public String getPasswordRecoveryForm_selectQuestion() {
        return passwordRecoveryForm_selectQuestion;
    }

    public void setPasswordRecoveryForm_selectQuestion(String passwordRecoveryForm_selectQuestion) {
        this.passwordRecoveryForm_selectQuestion = passwordRecoveryForm_selectQuestion;
    }

    public String getPasswordRecoveryForm_textAnswer() {
        return passwordRecoveryForm_textAnswer;
    }

    public void setPasswordRecoveryForm_textAnswer(String passwordRecoveryForm_textAnswer) {
        this.passwordRecoveryForm_textAnswer = passwordRecoveryForm_textAnswer;
    }

    public String getPasswordRecoveryForm_textEmailId() {
        return passwordRecoveryForm_textEmailId;
    }

    public void setPasswordRecoveryForm_textEmailId(String passwordRecoveryForm_textEmailId) {
        this.passwordRecoveryForm_textEmailId = passwordRecoveryForm_textEmailId;
    }

    public String getPasswordRecoveryForm_textEmpId() {
        return passwordRecoveryForm_textEmpId;
    }

    public void setPasswordRecoveryForm_textEmpId(String passwordRecoveryForm_textEmpId) {
        this.passwordRecoveryForm_textEmpId = passwordRecoveryForm_textEmpId;
    }

    public String getPasswordRecoveryForm_textUserId() {
        return passwordRecoveryForm_textUserId;
    }

    public void setPasswordRecoveryForm_textUserId(String passwordRecoveryForm_textUserId) {
        this.passwordRecoveryForm_textUserId = passwordRecoveryForm_textUserId;
    }


    
}
