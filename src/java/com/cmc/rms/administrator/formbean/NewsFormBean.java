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
public class NewsFormBean extends org.apache.struts.action.ActionForm {
    
    private String newsTitle;
    private String newsArea;

    public String getNewsArea() {
        return newsArea;
    }

    public void setNewsArea(String newsArea) {
        this.newsArea = newsArea;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle;
    }

}