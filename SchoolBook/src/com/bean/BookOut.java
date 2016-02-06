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
public class BookOut {
         private String boid;
         private String bodate;
         private String uname;
         private String uphone;
         private String bid;
         private String bname;
         private int num;

    public BookOut(String boid, String bodate, String uname, String uphone, String bid, String bname, int num) {
        this.boid = boid;
        this.bodate = bodate;
        this.uname = uname;
        this.uphone = uphone;
        this.bid = bid;
        this.bname = bname;
        this.num = num;
    }

    public BookOut() {
    }

    public String getBoid() {
        return boid;
    }

    public void setBoid(String boid) {
        this.boid = boid;
    }

    public String getBodate() {
        return bodate;
    }

    public void setBodate(String bodate) {
        this.bodate = bodate;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getBid() {
        return bid;
    }

    public void setBid(String bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }
         
    
}
