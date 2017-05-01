/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.cmc.rms.hr.formbean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Tonyw@rringle
 */
public class NewRecruitmentFormBean extends org.apache.struts.action.ActionForm {
    
    private String new_rec_textJobTitle=null;
    private String new_rec_textTotalPost=null;
    private String new_rec_textSkill=null;
    private String new_rec_textMinExpPost=null;
    private String new_rec_textMaxExpPost=null;
    private String new_rec_textQualification=null;
    private String new_rec_textMinAge=null;
    private String new_rec_textMaxAge=null;
    private String new_rec_selectJobType=null;
    private String new_rec_selectMinAge=null;
    private String new_rec_selectMaxAge=null;
    private String new_rec_selectExperience=null;
    private String new_rec_selectPostingDate1=null;
    private String new_rec_selectPostingDate2=null;
    private String new_rec_selectPostingDate3=null;
    private String new_rec_textareaDiscription=null;
    private String new_rec_sal=null;
    private String new_rec_selectDept=null;

    public String getNew_rec_selectDept() {
        return new_rec_selectDept;
    }

    public void setNew_rec_selectDept(String new_rec_selectDept) {
        this.new_rec_selectDept = new_rec_selectDept;
    }




    public String getNew_rec_textareaDiscription() {
        return new_rec_textareaDiscription;
    }

    public String getNew_rec_sal() {
        return new_rec_sal;
    }

    public void setNew_rec_sal(String new_rec_sal) {
        this.new_rec_sal = new_rec_sal;
    }

    public void setNew_rec_textareaDiscription(String new_rec_textareaDiscription) {
        this.new_rec_textareaDiscription = new_rec_textareaDiscription;
    }


    private String JSEO01=null;

    public String getJSEO01() {
        return JSEO01;
    }

    public void setJSEO01(String JSEO01) {
        this.JSEO01 = JSEO01;
    }



    public String getNew_rec_selectExperience() {
        return new_rec_selectExperience;
    }

    public void setNew_rec_selectExperience(String new_rec_selectExperience) {
        this.new_rec_selectExperience = new_rec_selectExperience;
    }

    public String getNew_rec_selectJobType() {
        return new_rec_selectJobType;
    }

    public void setNew_rec_selectJobType(String new_rec_selectJobType) {
        this.new_rec_selectJobType = new_rec_selectJobType;
    }

    public String getNew_rec_selectMaxAge() {
        return new_rec_selectMaxAge;
    }

    public void setNew_rec_selectMaxAge(String new_rec_selectMaxAge) {
        this.new_rec_selectMaxAge = new_rec_selectMaxAge;
    }

    public String getNew_rec_selectMinAge() {
        return new_rec_selectMinAge;
    }

    public void setNew_rec_selectMinAge(String new_rec_selectMinAge) {
        this.new_rec_selectMinAge = new_rec_selectMinAge;
    }

    public String getNew_rec_selectPostingDate1() {
        return new_rec_selectPostingDate1;
    }

    public void setNew_rec_selectPostingDate1(String new_rec_selectPostingDate1) {
        this.new_rec_selectPostingDate1 = new_rec_selectPostingDate1;
    }

    public String getNew_rec_selectPostingDate2() {
        return new_rec_selectPostingDate2;
    }

    public void setNew_rec_selectPostingDate2(String new_rec_selectPostingDate2) {
        this.new_rec_selectPostingDate2 = new_rec_selectPostingDate2;
    }

    public String getNew_rec_selectPostingDate3() {
        return new_rec_selectPostingDate3;
    }

    public void setNew_rec_selectPostingDate3(String new_rec_selectPostingDate3) {
        this.new_rec_selectPostingDate3 = new_rec_selectPostingDate3;
    }


    public String getNew_rec_textJobTitle() {
        return new_rec_textJobTitle;
    }

    public void setNew_rec_textJobTitle(String new_rec_textJobTitle) {
        this.new_rec_textJobTitle = new_rec_textJobTitle;
    }

    public String getNew_rec_textMaxAge() {
        return new_rec_textMaxAge;
    }

    public void setNew_rec_textMaxAge(String new_rec_textMaxAge) {
        this.new_rec_textMaxAge = new_rec_textMaxAge;
    }

    public String getNew_rec_textMaxExpPost() {
        return new_rec_textMaxExpPost;
    }

    public void setNew_rec_textMaxExpPost(String new_rec_textMaxExpPost) {
        this.new_rec_textMaxExpPost = new_rec_textMaxExpPost;
    }

    public String getNew_rec_textMinAge() {
        return new_rec_textMinAge;
    }

    public void setNew_rec_textMinAge(String new_rec_textMinAge) {
        this.new_rec_textMinAge = new_rec_textMinAge;
    }

    public String getNew_rec_textMinExpPost() {
        return new_rec_textMinExpPost;
    }

    public void setNew_rec_textMinExpPost(String new_rec_textMinExpPost) {
        this.new_rec_textMinExpPost = new_rec_textMinExpPost;
    }

    public String getNew_rec_textQualification() {
        return new_rec_textQualification;
    }

    public void setNew_rec_textQualification(String new_rec_textQualification) {
        this.new_rec_textQualification = new_rec_textQualification;
    }

    public String getNew_rec_textSkill() {
        return new_rec_textSkill;
    }

    public void setNew_rec_textSkill(String new_rec_textSkill) {
        this.new_rec_textSkill = new_rec_textSkill;
    }

    public String getNew_rec_textTotalPost() {
        return new_rec_textTotalPost;
    }

    public void setNew_rec_textTotalPost(String new_rec_textTotalPost) {
        this.new_rec_textTotalPost = new_rec_textTotalPost;
    }


    }
