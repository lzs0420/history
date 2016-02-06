/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

import java.util.Date;
/**
 *
 * @author Administrator
 */
public class Book_in {

    private String BI_id;
    private String BI_date;
    private String B_id;
    private int B_no;
    private String A_id;
    private String A_name;

    private String B_name;
    private int B_price;
    private String B_press;
    private String B_author;
  
    
    
    public Book_in(String BI_id, String BI_date, String B_id, int B_no, String A_id, String A_name, String B_name, int B_price, String B_press, String B_author) {
        this.BI_id = BI_id;
        this.BI_date = BI_date;
        this.B_id = B_id;
        this.B_no = B_no;
        this.A_id = A_id;
        this.A_name = A_name;
        this.B_name = B_name;
        this.B_price = B_price;
        this.B_press = B_press;
        this.B_author = B_author;
    }
    
    
    public Book_in() {
    }

    public Book_in(String BI_id, String BI_date, String B_id, int B_no, String A_id) {
        this.BI_id = BI_id;
        this.BI_date = BI_date;
        this.B_id = B_id;
        this.B_no = B_no;
        this.A_id = A_id;
    }


    public String getBI_id() {
        return BI_id;
    }

    public void setBI_id(String BI_id) {
        this.BI_id = BI_id;
    }

   

    public String getB_id() {
        return B_id;
    }

    public void setB_id(String B_id) {
        this.B_id = B_id;
    }


    public String getA_id() {
        return A_id;
    }

    public void setA_id(String A_id) {
        this.A_id = A_id;
    }

    public String getBI_date() {
        return BI_date;
    }

    public void setBI_date(String BI_date) {
        this.BI_date = BI_date;
    }

    public int getB_no() {
        return B_no;
    }

    public void setB_no(int B_no) {
        this.B_no = B_no;
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

    public String getB_press() {
        return B_press;
    }

    public void setB_press(String B_press) {
        this.B_press = B_press;
    }

    public String getB_author() {
        return B_author;
    }

    public void setB_author(String B_author) {
        this.B_author = B_author;
    }

    public String getA_name() {
        return A_name;
    }

    public void setA_name(String A_name) {
        this.A_name = A_name;
    }

}
