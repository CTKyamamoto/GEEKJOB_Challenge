<%-- 
    Document   : challenge1-6
    Created on : 2017/02/02, 3:01:58
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge1-6</title>
    </head>
    <body>
<%
    //クエリストリングを利用して「amount1」=総額・「number1」=個数・「tyep1」=商品種別のパラメータを渡す。
    String amount1 = request.getParameter("amount");
    String number1 = request.getParameter("number");
    String tyep1 = request.getParameter("tyep");
    
    //取得したパラメータが文字列の為、数値に変換する。    
    int amount2 = Integer.parseInt(amount1);
    int number2 = Integer.parseInt(number1);
    int tyep2 = Integer.parseInt(tyep1);
            
    /*商品種別のパラメータ取得して表示する。
    1の場合「雑貨」、2の場合「生鮮食品」、3の場合「その他」。*/
    if(tyep2 == 1){
        out.println("商品名：雑貨"+"<br>");
    }else if(tyep2 == 2){
        out.println("商品名：生鮮食品"+"<br>");
    }else if(tyep2 == 3){
        out.println("商品名：その他"+"<br>");
    }
    
    //総額と個数から単価を表示する。
    out.println("単価："+amount2/number2+"円"+"<br>");
        
    /*総額3000円以上の購入で4%、総額5000円以上の購入で5%、それ以外だと0ポイントを付与する。
    付与するポイントを表示する。*/
    if((amount2>=3000)&&(amount2<5000)){
        out.println("付与ポイント："+amount2*4/100+"ポイント");
    }else if(amount2>=5000){
        out.println("付与ポイント："+amount2*5/100+"ポイント");
    }else{
        out.println("付与ポイント："+0+"ポイント");
    }
    
    /*「例」生鮮食品(2)を10個、総額3500円購入した場合。
    商品名：生鮮食品、単価：350円、付与ポイント：140ポイントが表示されます。
    http://localhost:8080/challenge1/challenge1-6.jsp?amount=3500&number=10&tyep=2 */
%>        
    </body>
</html>
