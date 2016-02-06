/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bean;

/**
 *
 * @author hello
 */
public class Cart {
    private String C_id;
    private String U_id;
    private String B_id;
    private int B_no;

    public Cart() {
    }

    public Cart(String C_id, String U_id, String B_id, int B_no) {
        this.C_id = C_id;
        this.U_id = U_id;
        this.B_id = B_id;
        this.B_no = B_no;
    }

    public int getB_no() {
        return B_no;
    }

    public void setB_no(int B_no) {
        this.B_no = B_no;
    }

    public String getC_id() {
        return C_id;
    }

    public void setC_id(String C_id) {
        this.C_id = C_id;
    }

    public String getB_id() {
        return B_id;
    }

    public void setB_id(String B_id) {
        this.B_id = B_id;
    }

   
    public String getU_id() {
        return U_id;
    }

    public void setU_id(String U_id) {
        this.U_id = U_id;
    }


}
