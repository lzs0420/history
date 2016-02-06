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
public class BookTable {
    private String BT_id;
    private String U_name;
    private String U_phone;
    private String B_id;
    private String B_name;
    private float B_price;
    private int B_store;
    private int B_no;
    private String BT_date;   
    private String BT_sure;   

    public BookTable(String BT_id, String U_name, String U_phone, String B_id, String B_name, float B_price, int B_store, int B_no, String BT_date, String BT_sure) {
        this.BT_id = BT_id;
        this.U_name = U_name;
        this.U_phone = U_phone;
        this.B_id = B_id;
        this.B_name = B_name;
        this.B_price = B_price;
        this.B_store = B_store;
        this.B_no = B_no;
        this.BT_date = BT_date;
        this.BT_sure = BT_sure;
    }

    public String getBT_sure() {
        return BT_sure;
    }

    public void setBT_sure(String BT_sure) {
        this.BT_sure = BT_sure;
    }

    public BookTable() {
    }


    public int getB_store() {
        return B_store;
    }

    public void setB_store(int B_store) {
        this.B_store = B_store;
    }

  

    public String getBT_id() {
        return BT_id;
    }

    public void setBT_id(String BT_id) {
        this.BT_id = BT_id;
    }

    public String getU_name() {
        return U_name;
    }

    public void setU_name(String U_name) {
        this.U_name = U_name;
    }

    public String getU_phone() {
        return U_phone;
    }

    public void setU_phone(String U_phone) {
        this.U_phone = U_phone;
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

    public float getB_price() {
        return B_price;
    }

    public void setB_price(float B_price) {
        this.B_price = B_price;
    }

    public int getB_no() {
        return B_no;
    }

    public void setB_no(int B_no) {
        this.B_no = B_no;
    }

    public String getBT_date() {
        return BT_date;
    }

    public void setBT_date(String BT_date) {
        this.BT_date = BT_date;
    }
    
}
