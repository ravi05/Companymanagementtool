/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.administrator.formbean;
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
public class LoginFormBean extends org.apache.struts.action.ActionForm {
    
    private String selectType=null;
    private String textName=null;
    private String passwordAll=null;
    private String checkboxSign=null;

    public String getPasswordAll() {
        return passwordAll;
    }

    public void setPasswordAll(String passwordAll) {
        this.passwordAll = passwordAll;
    }

   
    public String getSelectType() {
        return selectType;
    }

    public void setSelectType(String selectType) {
        this.selectType = selectType;
    }

    public String getTextName() {
        return textName;
    }

    public void setTextName(String textName) {
        this.textName = textName;
    }

    public String getCheckboxSign() {
        return checkboxSign;
    }

    public void setCheckboxSign(String checkboxSign) {
        this.checkboxSign = checkboxSign;
    }


    
}
