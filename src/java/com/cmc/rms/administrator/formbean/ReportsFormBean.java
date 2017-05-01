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
public class ReportsFormBean extends org.apache.struts.action.ActionForm {
    
    private String reports_textCID=null;
    private String reports_textCName=null;
    private String reports_textProjName=null;
    private String reports_SelectD1=null;
    private String reports_SelectM1=null;
    private String reports_SelectY1=null;
    private String reports_SelectD2=null;
    private String reports_SelectM2=null;
    private String reports_SelectY2=null;

    public String getReports_SelectD1() {
        return reports_SelectD1;
    }

    public void setReports_SelectD1(String reports_SelectD1) {
        this.reports_SelectD1 = reports_SelectD1;
    }

    public String getReports_SelectD2() {
        return reports_SelectD2;
    }

    public void setReports_SelectD2(String reports_SelectD2) {
        this.reports_SelectD2 = reports_SelectD2;
    }

    public String getReports_SelectM1() {
        return reports_SelectM1;
    }

    public void setReports_SelectM1(String reports_SelectM1) {
        this.reports_SelectM1 = reports_SelectM1;
    }

    public String getReports_SelectM2() {
        return reports_SelectM2;
    }

    public void setReports_SelectM2(String reports_SelectM2) {
        this.reports_SelectM2 = reports_SelectM2;
    }

    public String getReports_SelectY1() {
        return reports_SelectY1;
    }

    public void setReports_SelectY1(String reports_SelectY1) {
        this.reports_SelectY1 = reports_SelectY1;
    }

    public String getReports_SelectY2() {
        return reports_SelectY2;
    }

    public void setReports_SelectY2(String reports_SelectY2) {
        this.reports_SelectY2 = reports_SelectY2;
    }

    public String getReports_textCID() {
        return reports_textCID;
    }

    public void setReports_textCID(String reports_textCID) {
        this.reports_textCID = reports_textCID;
    }

    public String getReports_textCName() {
        return reports_textCName;
    }

    public void setReports_textCName(String reports_textCName) {
        this.reports_textCName = reports_textCName;
    }

    public String getReports_textProjName() {
        return reports_textProjName;
    }

    public void setReports_textProjName(String reports_textProjName) {
        this.reports_textProjName = reports_textProjName;
    }

    






    
}
