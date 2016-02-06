/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

/**
 *
 * @author Administrator
 */
public class User {
    private String U_id;
    private String U_name;
    private String U_pwd;
    private String U_phone;
    private int U_value;

    public User(String U_id, String U_pwd) {
        this.U_id = U_id;
        this.U_pwd = U_pwd;
    }

    public User(String U_id, String U_name, String U_pwd, String U_phone, int U_value) {
        this.U_id = U_id;
        this.U_name = U_name;
        this.U_pwd = U_pwd;
        this.U_phone = U_phone;
        this.U_value = U_value;
    }

    public User() {
    }

    public String getU_id() {
        return U_id;
    }

    public void setU_id(String U_id) {
        this.U_id = U_id;
    }

    public String getU_name() {
        return U_name;
    }

    public void setU_name(String U_name) {
        this.U_name = U_name;
    }

    public String getU_pwd() {
        return U_pwd;
    }

    public void setU_pwd(String U_pwd) {
        this.U_pwd = U_pwd;
    }

    public String getU_phone() {
        return U_phone;
    }

    public void setU_phone(String U_phone) {
        this.U_phone = U_phone;
    }

    public int getU_value() {
        return U_value;
    }

    public void setU_value(int U_value) {
        this.U_value = U_value;
    }
}
