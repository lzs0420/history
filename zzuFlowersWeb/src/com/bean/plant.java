/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bean;

import java.util.List;

/**
 *
 * @author Administrator
 */
public class plant {
    private String P_id;
    private String P_name;
    private List<adress> list_adress;
    private String P_florescence;
    private String P_summary;
    private String P_feature;
    private String P_distribution;
    private String P_value;
    private String P_culture;

    public plant() {
    }

    public plant(String P_id, String P_name, List<adress> list_adress) {
        this.P_id = P_id;
        this.P_name = P_name;
        this.list_adress = list_adress;
    }

    public plant(String P_id, String P_name, String P_florescence, String P_summary, String P_feature, String P_distribution, String P_value, String P_culture) {
        this.P_id = P_id;
        this.P_name = P_name;
        this.P_florescence = P_florescence;
        this.P_summary = P_summary;
        this.P_feature = P_feature;
        this.P_distribution = P_distribution;
        this.P_value = P_value;
        this.P_culture = P_culture;
    }

    public plant(String P_id, String P_name, List<adress> list_adress, String P_florescence, String P_summary, String P_feature, String P_distribution, String P_value, String P_culture) {
        this.P_id = P_id;
        this.P_name = P_name;
        this.list_adress = list_adress;
        this.P_florescence = P_florescence;
        this.P_summary = P_summary;
        this.P_feature = P_feature;
        this.P_distribution = P_distribution;
        this.P_value = P_value;
        this.P_culture = P_culture;
    }

    
    
    /**
     * @return the P_id
     */
    public String getP_id() {
        return P_id;
    }

    /**
     * @param P_id the P_id to set
     */
    public void setP_id(String P_id) {
        this.P_id = P_id;
    }

    /**
     * @return the P_name
     */
    public String getP_name() {
        return P_name;
    }

    /**
     * @param P_name the P_name to set
     */
    public void setP_name(String P_name) {
        this.P_name = P_name;
    }

    

    /**
     * @return the P_florerescence
     */
    public String getP_florescence() {
        return P_florescence;
    }

    /**
     * @param P_florescence
     */
    public void setP_florescence(String P_florescence) {
        this.P_florescence = P_florescence;
    }

    /**
     * @return the P_summary
     */
    public String getP_summary() {
        return P_summary;
    }

    /**
     * @param P_summary the P_summary to set
     */
    public void setP_summary(String P_summary) {
        this.P_summary = P_summary;
    }

    /**
     * @return the P_feature
     */
    public String getP_feature() {
        return P_feature;
    }

    /**
     * @param P_feature the P_feature to set
     */
    public void setP_feature(String P_feature) {
        this.P_feature = P_feature;
    }

    /**
     * @return the P_distribution
     */
    public String getP_distribution() {
        return P_distribution;
    }

    /**
     * @param P_distribution the P_distribution to set
     */
    public void setP_distribution(String P_distribution) {
        this.P_distribution = P_distribution;
    }

    /**
     * @return the P_value
     */
    public String getP_value() {
        return P_value;
    }

    /**
     * @param P_value the P_value to set
     */
    public void setP_value(String P_value) {
        this.P_value = P_value;
    }

    /**
     * @return the P_culture
     */
    public String getP_culture() {
        return P_culture;
    }

    /**
     * @param P_culture the P_culture to set
     */
    public void setP_culture(String P_culture) {
        this.P_culture = P_culture;
    }

    /**
     * @return the list_adress
     */
    public List<adress> getList_adress() {
        return list_adress;
    }

    /**
     * @param list_adress the list_adress to set
     */
    public void setList_adress(List<adress> list_adress) {
        this.list_adress = list_adress;
    }

   
    
    
}
