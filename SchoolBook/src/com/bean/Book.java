/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bean;

/**
 *
 * @author hello
 */
public class Book {
    private String B_id;
    private String B_name;
    private String B_author;
    private float B_price;
    private String B_press;
    private int B_store;

    public Book() {
    }

    public Book(String B_id, String B_name, String B_author, float B_price, String B_press, int B_store) {
        this.B_id = B_id;
        this.B_name = B_name;
        this.B_author = B_author;
        this.B_price = B_price;
        this.B_press = B_press;
        this.B_store = B_store;
    }

    public String getB_author() {
        return B_author;
    }

    public void setB_author(String B_author) {
        this.B_author = B_author;
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

    public int getB_store() {
        return B_store;
    }

    public void setB_store(int B_store) {
        this.B_store = B_store;
    }


}
