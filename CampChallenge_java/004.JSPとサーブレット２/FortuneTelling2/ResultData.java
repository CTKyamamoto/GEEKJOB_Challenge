/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

//バイトデータに変換できる様に、インターフェイスをする。
import java.io.Serializable;
import java.util.Date;
/**
 *
 * @author 将也
 */
public class ResultData implements Serializable { //引数のないコンストラクタ。
    
    //「private」でカプセル化をする。（この中でしか使用できない。）
    private Date d;
    private String luck;
    
    public ResultData() {}
    
    //「getter」でフィールドの情報を設定。「setter」でその情報を引き出す。
    
    /**
     * @return the d
     */
    public Date getD() {
        return d;
    }
    
    /**
     * @param d the d to set
     */
    public void setD(Date d) {
        this.d = d;
    }
    
    /**
     * @return the luck
     */
    public String getLuck() {
        return luck;
    }

    /**
     * @param luck the luck to set
     */
    public void setLuck(String luck) {
        this.luck = luck;
    }
}   


