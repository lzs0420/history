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
public class adress {
    private String P_id;
    private String A_id;
    private String P_adress1;
    private String P_latitude;
    private String P_longitude;
    private int P_flag;

    public adress() {
    }

    public adress(String A_id, String P_adress1, int P_flag) {
        this.A_id = A_id;
        this.P_adress1 = P_adress1;
        this.P_flag = P_flag;
    }

    public adress(String P_adress1, int P_flag) {
        this.P_adress1 = P_adress1;
        this.P_flag = P_flag;
    }

    public adress(String P_id, String P_adress1, String P_latitude, String P_longitude, int P_flag) {
        this.P_id = P_id;
        this.P_adress1 = P_adress1;
        this.P_latitude = P_latitude;
        this.P_longitude = P_longitude;
        this.P_flag = P_flag;
    }

    public adress(String P_adress1, String P_latitude, String P_longitude, int P_flag) {
        this.P_adress1 = P_adress1;
        this.P_latitude = P_latitude;
        this.P_longitude = P_longitude;
        this.P_flag = P_flag;
    }

    public adress(String P_id, String A_id, String P_adress1, String P_latitude, String P_longitude, int P_flag) {
        this.P_id = P_id;
        this.A_id = A_id;
        this.P_adress1 = P_adress1;
        this.P_latitude = P_latitude;
        this.P_longitude = P_longitude;
        this.P_flag = P_flag;
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
     * @return the A_id
     */
    public String getA_id() {
        return A_id;
    }

    /**
     * @param A_id the A_id to set
     */
    public void setA_id(String A_id) {
        this.A_id = A_id;
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
