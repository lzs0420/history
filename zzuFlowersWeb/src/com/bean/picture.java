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
public class picture {
    private String Pic_id;
    private String P_id;

    //private Bitmap P_bt;
    /**
     * @return the Pic_id
     */
    public picture(String Pic_id, String P_id) {
        this.Pic_id = Pic_id;
        this.P_id = P_id;
    }

    
    
    public String getPic_id() {
        return Pic_id;
    }

    /**
     * @param Pic_id the Pic_id to set
     */
    public void setPic_id(String Pic_id) {
        this.Pic_id = Pic_id;
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
    
}
