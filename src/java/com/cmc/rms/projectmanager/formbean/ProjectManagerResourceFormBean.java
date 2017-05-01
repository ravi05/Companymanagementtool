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
 * @author user
 */
public class ProjectManagerResourceFormBean extends org.apache.struts.action.ActionForm {
    
    private String projectmanagerresource_checkbox1;
    private String projectmanagerresource_checkbox2;
    private String projectmanagerresource_checkbox3;
    private String projectmanagerresource_checkboxSelectProject;

    public String getProjectmanagerresource_checkbox1() {
        return projectmanagerresource_checkbox1;
    }

    public void setProjectmanagerresource_checkbox1(String projectmanagerresource_checkbox1) {
        this.projectmanagerresource_checkbox1 = projectmanagerresource_checkbox1;
    }

    public String getProjectmanagerresource_checkbox2() {
        return projectmanagerresource_checkbox2;
    }

    public void setProjectmanagerresource_checkbox2(String projectmanagerresource_checkbox2) {
        this.projectmanagerresource_checkbox2 = projectmanagerresource_checkbox2;
    }

    public String getProjectmanagerresource_checkbox3() {
        return projectmanagerresource_checkbox3;
    }

    public void setProjectmanagerresource_checkbox3(String projectmanagerresource_checkbox3) {
        this.projectmanagerresource_checkbox3 = projectmanagerresource_checkbox3;
    }

    public String getProjectmanagerresource_checkboxSelectProject() {
        return projectmanagerresource_checkboxSelectProject;
    }

    public void setProjectmanagerresource_checkboxSelectProject(String projectmanagerresource_checkboxSelectProject) {
        this.projectmanagerresource_checkboxSelectProject = projectmanagerresource_checkboxSelectProject;
    }

    
}
