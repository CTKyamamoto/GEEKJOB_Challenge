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
public class Dealer extends Human{
    
    public String getCard(){
    
    String str = "";
    int n = 1;
    
    //引いたトランプの枚数分を拡張for文で回して、引いたトランプ1枚1枚をHumanクラスで定義したマークと数字をstrに持たせる処理。
    for(Integer[] card:myCards){
    
        //「cardNumber」の-1はcardのループを1から始めている為。配列は0から始まるので-1で合わせる。
        str = str + n +"枚目は"+mark[card[0]]+" "+cardNumber[card[1]-1]+"<br>";
        n++;
    }
    return str;
    }
    
    public int open(){
        
    
    int sum = 0;
    boolean hasAce = false;
    
    for(Integer[] card:myCards){
    
    //引いたトランプがエース(A:1)の場合11を持たせる為の条件分岐の処理。
    if(card[1] == 1){
        
        hasAce = true;
    }
    //ジャック、クイーン、キングを引いた場合は10点を足す為の条件分岐の処理。その他はそのままトランプの値分点数が足される処理。
    if(card[1] == 11 || card[1] == 12 || card[1] == 13){
        
        sum = sum + 10;
    }else{
        
        sum = sum + card[1];
    }
    }
    //エースを引いていたら「true」になるので合計点数が11未満だと＋10をする処理。
    if(hasAce == true){
        if(sum<=11){
            
            sum = sum + 10;
        }
    }
        return sum;
    }
    
    ArrayList<Integer[]> myCards = new ArrayList<Integer[]>();
    
    public void setCard(ArrayList<Integer[]>hitCards){
    
    /*ディーラーから引いたカードで手札を作る為、引いたトランプの回数を拡張for文として設定。
    　「ArrayList myCards」にcard(トランプの要素)をループ分取得する。 */
    for(Integer[] card:hitCards){
    myCards.add(card);
    }
    }
    public boolean checkSum(){
        
        //手札の合計点数によってトランプをhitするかを処理する為の条件分岐。17点以上で1枚トランプを引く。
        if(this.open() <= 16){
            return true;
        }else{
            return false;
        }
    }
    ArrayList<Integer[]>cards = new ArrayList<Integer[]>();{
    
    /*トランプ1枚1枚の要素を持たせるループ処理。card配列はj=マーク数、i=数字を持たせる。
    　A～Kまでのトランプを4回ループする事でArrayListカードに入れる。*/
    for(int j= 0;j<4;j++){
    for(int i= 1;i<=13;i++){
    Integer[] card = {j,i};
    for(int k=0;i<2;i++){
    }
    cards.add(card);
    }
    }
   
}
    public ArrayList<Integer[]> deal(){
        
        int x = 0;
        ArrayList<Integer[]> z = new ArrayList<Integer[]>();
        
        //「deal」メソッドは2回トランプを引かせる為の処理。
        for(int i=0;i<2;i++){
        
            //乱数を使い、引いたトランプをばらばらにする。
            x = (int)(Math.random()*cards.size());
        
            //「remove」をする事で一度引いたトランプを削除して同じトランプを引かない処理。
            Integer[] y = cards.remove(x);
            z.add(y);
        }
        return z;
        }
    
    //「hit」メソッドはトランプを1枚引く為の処理を行う。removeで削除を行うことで何度処理されても同じトランプを引かない。
    public ArrayList<Integer[]> hit(){
        
        int x = 0;
        ArrayList<Integer[]> z = new ArrayList<Integer[]>();
        
        x = (int)(Math.random()*cards.size());
        
        Integer[] y = cards.remove(x);
        z.add(y);
        
        return z;
    }
    }