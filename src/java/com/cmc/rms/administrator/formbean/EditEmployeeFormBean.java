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
 * @author user
 */
public class EditEmployeeFormBean extends org.apache.struts.action.ActionForm {

    private String editEmployee_textempID = null;

    public String getEditEmployee_textempID() {
        return editEmployee_textempID;
    }

    public void setEditEmployee_textempID(String editEmployee_textempID) {
        this.editEmployee_textempID = editEmployee_textempID;
    }

}
