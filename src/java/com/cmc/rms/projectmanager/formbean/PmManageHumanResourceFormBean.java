/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.projectmanager.formbean;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.struts.action.ActionErrors;
//import org.apache.struts.action.ActionMapping;
//import org.apache.struts.action.ActionMessage;

/**
 *
 * @author A.Ranjan
 */
public class PmManageHumanResourceFormBean extends org.apache.struts.action.ActionForm {
    
    private String pmManageHumanResource_textSkill=null;
    private String pmManageHumanResource_textStatus=null;
    private String pmManageHumanResource_textExp=null;
    private String pmManageHumanResource_checkboxEmp1=null;
    private String pmManageHumanResource_CheckboxEmp2=null;
    private String pmManageHumanResource_CheckboxEmp3=null;

    public String getPmManageHumanResource_CheckboxEmp2() {
        return pmManageHumanResource_CheckboxEmp2;
    }

    public void setPmManageHumanResource_CheckboxEmp2(String pmManageHumanResource_CheckboxEmp2) {
        this.pmManageHumanResource_CheckboxEmp2 = pmManageHumanResource_CheckboxEmp2;
    }

    public String getPmManageHumanResource_CheckboxEmp3() {
        return pmManageHumanResource_CheckboxEmp3;
    }

    public void setPmManageHumanResource_CheckboxEmp3(String pmManageHumanResource_CheckboxEmp3) {
        this.pmManageHumanResource_CheckboxEmp3 = pmManageHumanResource_CheckboxEmp3;
    }

    public String getPmManageHumanResource_checkboxEmp1() {
        return pmManageHumanResource_checkboxEmp1;
    }

    public void setPmManageHumanResource_checkboxEmp1(String pmManageHumanResource_checkboxEmp1) {
        this.pmManageHumanResource_checkboxEmp1 = pmManageHumanResource_checkboxEmp1;
    }

    public String getPmManageHumanResource_textExp() {
        return pmManageHumanResource_textExp;
    }

    public void setPmManageHumanResource_textExp(String pmManageHumanResource_textExp) {
        this.pmManageHumanResource_textExp = pmManageHumanResource_textExp;
    }

    public String getPmManageHumanResource_textSkill() {
        return pmManageHumanResource_textSkill;
    }

    public void setPmManageHumanResource_textSkill(String pmManageHumanResource_textSkill) {
        this.pmManageHumanResource_textSkill = pmManageHumanResource_textSkill;
    }

    public String getPmManageHumanResource_textStatus() {
        return pmManageHumanResource_textStatus;
    }

    public void setPmManageHumanResource_textStatus(String pmManageHumanResource_textStatus) {
        this.pmManageHumanResource_textStatus = pmManageHumanResource_textStatus;
    }

}
