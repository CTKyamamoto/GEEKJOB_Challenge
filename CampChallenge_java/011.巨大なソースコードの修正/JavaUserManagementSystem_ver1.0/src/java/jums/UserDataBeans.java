/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jums;

import java.io.Serializable;

/**
 *
 * @author 将也
 */
public class UserDataBeans implements Serializable{
    //検索フォームから飛んできたデータを格納するJavaBeans。
    private String name;
    private int year;
    private String strYear;
    private int month;
    private String strMonth;
    private int day;
    private String strDay;
    private int type;
    private String strType;
    private String tell;
    private String comment; 

    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    
    public int getYear(){
        return year;
    }
    public void setYear(int year){
        this.year = year;
    }
    public String getStrYear(){
        return strYear;
    }
    public void setStrYear(String strYear){
        this.strYear = strYear;
        if(!strYear.equals("")){
            this.year = Integer.parseInt(strYear);
        }
    }
    
    public int getMonth(){
        return month;
    }
    public void setMonth(int month){
        this.month = month;
    }
    public String getStrMonth(){
        return strMonth;
    }
    public void setStrMonth(String strMonth){
        this.strMonth = strMonth;
        if(!strMonth.equals("")){
            this.month = Integer.parseInt(strMonth);
        }
    }
    
    public int getDay(){
        return day;
    }
    public void setDay(int day){
        this.day = day;
    }
    public String getStrDay(){
        return strDay;
    }
    public void setStrDay(String strDay){
        this.strDay = strDay;
        if(!strDay.equals("")){
            this.day = Integer.parseInt(strDay);
        }
    }
    
    public int getType(){
        return type;
    }
    public void setType(int type){
        this.type = type;
    }
    public String getStrType(){
        return strType;
    }
    public void setStrType(String strType){
        this.strType = strType;
        if(strType == null || strType.equals("")){
            this.strType = ("");
        }else{
            this.type = Integer.parseInt(strType);
        }
    }
    
    public String getTell(){
        return tell;
    }
    public void setTell(String tell){
        this.tell = tell;
    }
    
    public String getComment(){
        return comment;
    }
    public void setComment(String comment){
        this.comment = comment;
    }
}
