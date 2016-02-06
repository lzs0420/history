/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bean;

/**
 *
 * @author Administrator
 */
public class map_message {
        private String P_id;
	private String P_name;
	private String P_adress1;
	private int P_flag;
	private String P_latitude;
	private String P_longitude;

    public map_message(String P_id, String P_name, String P_adress1, int P_flag, String P_latitude, String P_longitude) {
        this.P_id = P_id;
        this.P_name = P_name;
        this.P_adress1 = P_adress1;
        this.P_flag = P_flag;
        this.P_latitude = P_latitude;
        this.P_longitude = P_longitude;
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
     * @return the P_adress1
     */
    public String getP_adress1() {
        return P_adress1;
    }

    /**
     * @param P_adress1 the P_adress1 to set
     */
    public void setP_adress1(String P_adress1) {
        this.P_adress1 = P_adress1;
    }

    /**
     * @return the P_flag
     */
    public int getP_flag() {
        return P_flag;
    }

    /**
     * @param P_flag the P_flag to set
     */
    public void setP_flag(int P_flag) {
        this.P_flag = P_flag;
    }

    /**
     * @return the P_latitude
     */
    public String getP_latitude() {
        return P_latitude;
    }

    /**
     * @param P_latitude the P_latitude to set
     */
    public void setP_latitude(String P_latitude) {
        this.P_latitude = P_latitude;
    }

    /**
     * @return the P_longitude
     */
    public String getP_longitude() {
        return P_longitude;
    }

    /**
     * @param P_longitude the P_longitude to set
     */
    public void setP_longitude(String P_longitude) {
        this.P_longitude = P_longitude;
    }
        
        
}
