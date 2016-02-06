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
public class LackRecord {
    private String LR_id;
    private String LR_date;
    private String B_id;
    private String B_name;
    private int B_no;
    private String LR_sure;

    public LackRecord() {
    }

    public LackRecord(String LR_id, String LR_date, String B_id, String B_name, int B_no , String LR_sure) {
        this.LR_id = LR_id;
        this.LR_date = LR_date;
        this.B_id = B_id;
        this.B_name = B_name;
        this.B_no = B_no;
        this.LR_sure=LR_sure;
    }

    public String getLR_sure() {
        return LR_sure;
    }

    public void setLR_sure(String LR_sure) {
        this.LR_sure = LR_sure;
    }

    public String getLR_id() {
        return LR_id;
    }

    public void setLR_id(String LR_id) {
        this.LR_id = LR_id;
    }

    public String getLR_date() {
        return LR_date;
    }

    public void setLR_date(String LR_date) {
        this.LR_date = LR_date;
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

    public int getB_no() {
        return B_no;
    }

    public void setB_no(int B_no) {
        this.B_no = B_no;
    }
    
    
}
