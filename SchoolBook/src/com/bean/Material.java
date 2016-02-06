/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

/**
 *
 * @author Administrator
 */
public class Material {
    private String M_id;
    private String M_date;
    private String B_id;
    private String B_name;
    private int B_price;
    private String B_author;
    private String B_press;
    private int B_no;

    public Material() {
    }

    public Material(String M_id, String M_date, String B_id, String B_name, int B_price, String B_author, String B_press, int B_no) {
        this.M_id = M_id;
        this.M_date = M_date;
        this.B_id = B_id;
        this.B_name = B_name;
        this.B_price = B_price;
        this.B_author = B_author;
        this.B_press = B_press;
        this.B_no = B_no;
    }

    public Material(String M_id, String M_date, String B_id, int B_no) {
        this.M_id = M_id;
        this.M_date = M_date;
        this.B_id = B_id;
        this.B_no = B_no;
    }

    public String getM_id() {
        return M_id;
    }

    public void setM_id(String M_id) {
        this.M_id = M_id;
    }

    public String getM_date() {
        return M_date;
    }

    public void setM_date(String M_date) {
        this.M_date = M_date;
    }

    public String getB_id() {
        return B_id;
    }

    public void setB_id(String B_id) {
        this.B_id = B_id;
    }

    public String getB_name() {
        return B_name;
    }

    public void setB_name(String B_name) {
        this.B_name = B_name;
    }

    public int getB_price() {
        return B_price;
    }

    public void setB_price(int B_price) {
        this.B_price = B_price;
    }

    public String getB_author() {
        return B_author;
    }

    public void setB_author(String B_author) {
        this.B_author = B_author;
    }

    public String getB_press() {
        return B_press;
    }

    public void setB_press(String B_press) {
        this.B_press = B_press;
    }

    public int getB_no() {
        return B_no;
    }

    public void setB_no(int B_no) {
        this.B_no = B_no;
    }
    
    
}
