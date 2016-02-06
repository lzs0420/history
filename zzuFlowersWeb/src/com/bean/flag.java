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
public class flag {
    private String F_id;
    private String A_id;
    private String P_name;
    private String P_adress1;
    private int P_userflag;
    private int F_flag;

    public flag() {
    }

    public flag(String F_id, String A_id, int P_userflag, int F_flag) {
        this.F_id = F_id;
        this.A_id = A_id;
        this.P_userflag = P_userflag;
        this.F_flag = F_flag;
    }

    public flag(String F_id, String A_id, String P_name, String P_adress1, int P_userflag, int F_flag) {
        this.F_id = F_id;
        this.A_id = A_id;
        this.P_name = P_name;
        this.P_adress1 = P_adress1;
        this.P_userflag = P_userflag;
        this.F_flag = F_flag;
    }

    /**
     * @return the F_id
     */
    public String getF_id() {
        return F_id;
    }

    /**
     * @param F_id the F_id to set
     */
    public void setF_id(String F_id) {
        this.F_id = F_id;
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
     * @return the P_userflag
     */
    public int getP_userflag() {
        return P_userflag;
    }

    /**
     * @param P_userflag the P_userflag to set
     */
    public void setP_userflag(int P_userflag) {
        this.P_userflag = P_userflag;
    }

    /**
     * @return the F_flag
     */
    public int getF_flag() {
        return F_flag;
    }

    /**
     * @param F_flag the F_flag to set
     */
    public void setF_flag(int F_flag) {
        this.F_flag = F_flag;
    }
    
    
}
