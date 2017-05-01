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
public class AddEmployeeFormBean extends org.apache.struts.action.ActionForm {
    
    private String addEmployee_textEmpID=null;
    private String addEmployee_textEmpNmae=null;
    private String addEmployee_textEmpPass=null;
   private String addEmployee_textEmpJTitle=null;
   private String addEmployee_textEmpSal=null;
   private String addEmployee_textEmpTSlot=null;

    public String getAddEmployee_textEmpID() {
        return addEmployee_textEmpID;
    }

    public void setAddEmployee_textEmpID(String addEmployee_textEmpID) {
        this.addEmployee_textEmpID = addEmployee_textEmpID;
    }

   
    public String getAddEmployee_textEmpNmae() {
        return addEmployee_textEmpNmae;
    }

    public void setAddEmployee_textEmpNmae(String addEmployee_textEmpNmae) {
        this.addEmployee_textEmpNmae = addEmployee_textEmpNmae;
    }

    public String getAddEmployee_textEmpJTitle() {
        return addEmployee_textEmpJTitle;
    }

    public void setAddEmployee_textEmpJTitle(String addEmployee_textEmpJTitle) {
        this.addEmployee_textEmpJTitle = addEmployee_textEmpJTitle;
    }

    public String getAddEmployee_textEmpPass() {
        return addEmployee_textEmpPass;
    }

    public void setAddEmployee_textEmpPass(String addEmployee_textEmpPass) {
        this.addEmployee_textEmpPass = addEmployee_textEmpPass;
    }

    public String getAddEmployee_textEmpSal() {
        return addEmployee_textEmpSal;
    }

    public void setAddEmployee_textEmpSal(String addEmployee_textEmpSal) {
        this.addEmployee_textEmpSal = addEmployee_textEmpSal;
    }

    public String getAddEmployee_textEmpTSlot() {
        return addEmployee_textEmpTSlot;
    }

    public void setAddEmployee_textEmpTSlot(String addEmployee_textEmpTSlot) {
        this.addEmployee_textEmpTSlot = addEmployee_textEmpTSlot;
    }


   
}
