/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bean;

/**
 *
 * @author hello
 */
public class CartDetail {
    private String C_id;
    private String B_id;
    private String B_name;
    private String B_auth;
    private String B_press;
    private int B_no;
    private float B_price;

    public CartDetail() {
    }

    public CartDetail(String C_id, String B_id, String B_name, String B_auth, String B_press, int B_no, float B_price) {
        this.C_id = C_id;
        this.B_id = B_id;
        this.B_name = B_name;
        this.B_auth = B_auth;
        this.B_press = B_press;
        this.B_no = B_no;
        this.B_price = B_price;
    }

    public String getB_id() {
        return B_id;
    }

    public void setB_id(String B_id) {
        this.B_id = B_id;
    }

   

    public String getB_auth() {
        return B_auth;
    }

    public void setB_auth(String B_auth) {
        this.B_auth = B_auth;
    }

    public String getB_name() {
        return B_name;
    }

    public void setB_name(String B_name) {
        this.B_name = B_name;
    }

    public String getB_press() {
        return B_press;
    }

    public void setB_press(String B_press) {
        this.B_press = B_press;
    }

    public float getB_price() {
        return B_price;
    }

    public void setB_price(float B_price) {
        this.B_price = B_price;
    }

    public String getC_id() {
        return C_id;
    }

    public void setC_id(String C_id) {
        this.C_id = C_id;
    }

    public int getB_no() {
        return B_no;
    }

    public void setB_no(int B_no) {
        this.B_no = B_no;
    }

   


}
