/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.service;

import com.bean.adress;
import com.bean.map_message;
import com.bean.picture;
import com.bean.plant;
import java.util.ArrayList;
import java.util.List;  
import org.json.JSONArray;  
import org.json.JSONException;  
import org.json.JSONObject;  

/**
 *
 * @author Administrator
 */
public class newjsonService {

    public newjsonService() {
    }
    
    public static String newjson1(List<plant> l) throws JSONException{
        JSONArray ja=new JSONArray();
        String str=null;
        for(plant p : l){
            JSONObject jo = new JSONObject(); 
            
            jo.put("P_id", p.getP_id());
            jo.put("P_name", p.getP_name());
            
            List<adress> l1=p.getList_adress();
            JSONArray ja1=new JSONArray();
            for(int i=0;i<l1.size();i++){
                adress a=l1.get(i);
                JSONObject jo1 = new JSONObject(); 
                jo1.put("P_adress1", a.getP_adress1());
                jo1.put("P_flag", a.getP_flag());
                
                ja1.put(jo1);//System.out.println(ja1.toString());
            }
            
            jo.put("list_adress", ja1);
            
            
            ja.put(jo);
        }
        str=ja.toString();//System.out.println(ja.toString());
        
        return str;
    }
    
    public static String newjson6(List<adress> l) throws JSONException{
        JSONArray ja=new JSONArray();
        String str=null;
        for(adress p : l){
            JSONObject jo = new JSONObject(); 
            
            jo.put("A_id", p.getA_id());
            jo.put("P_adress1", p.getP_adress1());
            jo.put("P_flag", p.getP_flag());
            
            ja.put(jo);
        }
        str=ja.toString();//System.out.println(ja.toString());
        
        return str;
    }
    
    public static String newjson5(List<map_message> l) throws JSONException{
        JSONArray ja=new JSONArray();
        String str=null;
        for(map_message p : l){
            JSONObject jo = new JSONObject(); 
            
            jo.put("P_id", p.getP_id());
            jo.put("P_name", p.getP_name());
            jo.put("P_adress1", p.getP_adress1());
            jo.put("P_latitude", p.getP_latitude());
            jo.put("P_longitude", p.getP_longitude());
            jo.put("P_flag", p.getP_flag());
            
            ja.put(jo);
        }
        str=ja.toString();//System.out.println(ja.toString());
        
        return str;
    }
    
    public static String newjson4(List<picture> l) throws JSONException{
        JSONArray ja=new JSONArray();
        String str=null;
        for(picture p : l){
            JSONObject jo = new JSONObject(); 
            
            jo.put("Pic_id", p.getPic_id());
            jo.put("P_id", p.getP_id());
            ja.put(jo);
        }
        str=ja.toString();//System.out.println(ja.toString());
        
        return str;
    }
    
    public static String newjson2(List<plant> l) throws JSONException{
        JSONArray ja=new JSONArray();
        String str=null;
        for(plant p : l){
            JSONObject jo = new JSONObject(); 
            
            jo.put("P_id", p.getP_id());
            jo.put("P_name", p.getP_name());
            
            List<adress> l1=new ArrayList<adress>();
            l1=p.getList_adress();
            JSONArray ja1=new JSONArray();
            for(adress a : l1){
                JSONObject jo1 = new JSONObject(); 
                jo1.put("P_adress1", a.getP_adress1());
                jo1.put("P_flag", a.getP_flag());
                jo1.put("P_latitude", a.getP_latitude());
                jo1.put("P_longitude", a.getP_longitude());
                ja1.put(jo1);
            }
            jo.put("list_adress", ja1);
            
            ja.put(jo);
        }
        str=ja.toString();
        
        return str;
    }
    
    public static String newjson3(List<plant> l) throws JSONException{
        JSONArray ja=new JSONArray();
        String str=null;
        for(plant p : l){
            JSONObject jo = new JSONObject(); 
            
            jo.put("P_id", p.getP_id());
            jo.put("P_name", p.getP_name());
            
            List<adress> l1=new ArrayList<adress>();
            l1=p.getList_adress();
            JSONArray ja1=new JSONArray();
            for(adress a : l1){
                JSONObject jo1 = new JSONObject(); 
                jo1.put("P_adress1", a.getP_adress1());
                jo1.put("P_flag", a.getP_flag());
                jo1.put("P_latitude", a.getP_latitude());
                jo1.put("P_longitude", a.getP_longitude());
                ja1.put(jo1);
            }
            jo.put("list_adress", ja1);
            
            jo.put("P_florescence", p.getP_florescence());
            jo.put("P_summary", p.getP_summary());
            jo.put("P_feature", p.getP_feature());
            jo.put("P_distribution", p.getP_distribution());
            jo.put("P_value", p.getP_value());
            jo.put("P_culture", p.getP_culture());
            
            ja.put(jo);
        }
        str=ja.toString();
        
        return str;
    }
    
}
