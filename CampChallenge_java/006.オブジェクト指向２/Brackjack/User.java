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

//Dealerと持たせている物はほぼ同じ内容になってしまいました。Humanを抽象化せず全て持たせるのと変わりが無いように思いました。
public class User extends Human{
    
    public String getCard(){
    
    String str = "";
    int n = 1;
    
    for(Integer[] card:myCards){
    
        str = str + n +"枚目は"+mark[card[0]]+" "+cardNumber[card[1]-1]+"<br>";
        n++;
    }
    return str;
    }
    
    public int open(){
        
    int sum = 0;
    boolean hasAce = false;
    
    for(Integer[] card:myCards){
        if(card[1] == 1){
            
            hasAce = true;
    }
        if(card[1] == 11 || card[1] == 12 || card[1] == 13){
            
            sum = sum + 10;
        }else{
            
            sum = sum + card[1];
    }
    }
    if(hasAce == true){
    
        if(sum<=11){
            sum = sum + 10;
    }
    }
        return sum;
    }
    ArrayList<Integer[]> myCards = new ArrayList<Integer[]>();
    
    public void setCard(ArrayList<Integer[]>hitCards){
    
    for(Integer[] card:hitCards){
        myCards.add(card);
    }
    }
    public boolean checkSum(){
        
        if(this.open() <= 16){
            return true;
        }else{
            return false;
        }
    }
    
}
