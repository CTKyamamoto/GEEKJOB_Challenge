/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.object;
import java.io.PrintWriter;
/**
 *
 * @author 将也
 */
public class Object1x3{
    //パブリックな2つの変数を定義する。
    public int num1 = 0;
    public int num2 = 0;
    
//2つの変数に値を入れるメソッドの作成。
public void setNumber(int a,int b){
    num1 = a;
    num2 = b;                           
    }
//2つの変数の中身をprintする為のメソッドを作成。(PrintWriterのインポートをしてoutを使える様にする。)
public void printNumber(PrintWriter out){
    out.print("num1="+num1+"<br>"+"num2="+num2+"<br>");
    }
}