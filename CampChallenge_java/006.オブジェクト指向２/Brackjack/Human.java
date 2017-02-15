/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.blackjack;
import java.util.ArrayList;

/**
 *
 * @author 将也
 */
abstract class Human {
    
    //定数でトランプのマーク、数字を配列に入れる。
    final String[] mark = {"♠","♥","♣","♦"};
    final String[] cardNumber = {"A","2","3","4","5","6","7","8","9","10","J","Q","K"};
    
    //抽象メソッドで「getCard」= 引いたトランプのマークと数字を表示させる為のメソッドを定義する。
    abstract public String getCard();
    
    //「open」= 手札のトランプの合計点数を入れる為のメソッドを定義する。
    abstract public int open();
    
    //「myCards」= AllayListで手札のトランプを定義する。
    ArrayList<Integer[]> myCards = new ArrayList<Integer[]>();
    
    //「setCard」= 手札にディーラーから引いたトランプを入れる為のメソッドを定義する。
    abstract public void setCard(ArrayList<Integer[]>hitCards);
    
    //「checkSum」= 勝敗を計る為のメソッドを定義する。
    abstract public boolean checkSum();
}
