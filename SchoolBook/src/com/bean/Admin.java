/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

/**
 *
 * @author Administrator
 */
public class Admin {
    private String A_id;
    private String A_name;
    private String A_pwd;
    private int A_value;

    public Admin() {
    }

    public Admin(String A_id, String A_pwd) {
        this.A_id = A_id;
        this.A_pwd = A_pwd;
    }

    public Admin(String A_id, String A_name, String A_pwd, int A_value) {
        this.A_id = A_id;
        this.A_name = A_name;
        this.A_pwd = A_pwd;
        this.A_value = A_value;
    }

    public String getA_id() {
        return A_id;
    }

    public void setA_id(String A_id) {
        this.A_id = A_id;
    }

    public String getA_name() {
        return A_name;
    }

    public void setA_name(String A_name) {
        this.A_name = A_name;
    }

    public String getA_pwd() {
        return A_pwd;
    }

    public void setA_pwd(String A_pwd) {
        this.A_pwd = A_pwd;
    }

    public int getA_value() {
        return A_value;
    }

    public void setA_value(int A_value) {
        this.A_value = A_value;
    }
    
}
