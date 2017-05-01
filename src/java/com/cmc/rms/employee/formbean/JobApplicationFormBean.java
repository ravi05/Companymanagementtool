/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.employee.formbean;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.struts.action.ActionErrors;
//import org.apache.struts.action.ActionMapping;
//import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Tonyw@rringle
 */
public class JobApplicationFormBean extends org.apache.struts.action.ActionForm {
    
    private String jobApplication_textJobID=null;
    private String jobApplication_textName=null;
    private String jobApplication_textEmailId=null;
    private String jobApplication_selectLocation=null;
   //private String jobApplication_selectCountry=null;
    private String jobApplication_textMobile=null;
    //private String jobApplication_checkboxSmsJobAlert=null;
    private String jobApplication_selectExpYear=null;
    //private String jobApplication_selectExpMonth=null;
    
    private String jobApplication_textareaSkill=null;
    private String jobApplication_textResumeHeadline=null;
    
    private String jobApplication_fileAttachResume=null;
    private String jobApplication_selectQualification=null;
    private String jobApplication_checkboxValidInfo=null;
    private String jobApplication_checkboxTermCond=null;
    private String jobApplication_radioSex=null;

    public String getJobApplication_selectQualification() {
        return jobApplication_selectQualification;
    }

    public void setJobApplication_selectQualification(String jobApplication_selectQualification) {
        this.jobApplication_selectQualification = jobApplication_selectQualification;
    }



    public String getJobApplication_radioSex() {
        return jobApplication_radioSex;
    }

    public void setJobApplication_radioSex(String jobApplication_radioSex) {
        this.jobApplication_radioSex = jobApplication_radioSex;
    }

    

    public String getJobApplication_textJobID() {
        return jobApplication_textJobID;
    }

    public void setJobApplication_textJobID(String jobApplication_textJobID) {
        this.jobApplication_textJobID = jobApplication_textJobID;
    }

   

    public String getJobApplication_fileAttachResume() {
        return jobApplication_fileAttachResume;
    }

    public void setJobApplication_fileAttachResume(String jobApplication_fileAttachResume) {
        this.jobApplication_fileAttachResume = jobApplication_fileAttachResume;
    }

   


    public String getJobApplication_selectExpYear() {
        return jobApplication_selectExpYear;
    }

    public void setJobApplication_selectExpYear(String jobApplication_selectExpYear) {
        this.jobApplication_selectExpYear = jobApplication_selectExpYear;
    }

  

    public String getJobApplication_selectLocation() {
        return jobApplication_selectLocation;
    }

    public void setJobApplication_selectLocation(String jobApplication_selectLocation) {
        this.jobApplication_selectLocation = jobApplication_selectLocation;
    }

   

    public String getJobApplication_textEmailId() {
        return jobApplication_textEmailId;
    }

    public void setJobApplication_textEmailId(String jobApplication_textEmailId) {
        this.jobApplication_textEmailId = jobApplication_textEmailId;
    }

    public String getJobApplication_textMobile() {
        return jobApplication_textMobile;
    }

    public void setJobApplication_textMobile(String jobApplication_textMobile) {
        this.jobApplication_textMobile = jobApplication_textMobile;
    }

    public String getJobApplication_textName() {
        return jobApplication_textName;
    }

    public void setJobApplication_textName(String jobApplication_textName) {
        this.jobApplication_textName = jobApplication_textName;
    }

    public String getJobApplication_textResumeHeadline() {
        return jobApplication_textResumeHeadline;
    }

    public void setJobApplication_textResumeHeadline(String jobApplication_textResumeHeadline) {
        this.jobApplication_textResumeHeadline = jobApplication_textResumeHeadline;
    }

  

    public String getJobApplication_textareaSkill() {
        return jobApplication_textareaSkill;
    }

    public void setJobApplication_textareaSkill(String jobApplication_textareaSkill) {
        this.jobApplication_textareaSkill = jobApplication_textareaSkill;
    }

    public String getJobApplication_checkboxValidInfo() {
        return jobApplication_checkboxValidInfo;
    }

    public void setJobApplication_checkboxValidInfo(String jobApplication_checkboxValidInfo) {
        this.jobApplication_checkboxValidInfo = jobApplication_checkboxValidInfo;
    }

    public String getJobApplication_checkboxTermCond() {
        return jobApplication_checkboxTermCond;
    }

    public void setJobApplication_checkboxTermCond(String jobApplication_checkboxTermCond) {
        this.jobApplication_checkboxTermCond = jobApplication_checkboxTermCond;
    }

   
}
