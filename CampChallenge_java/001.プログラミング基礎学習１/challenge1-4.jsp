<%-- 
    Document   : challenge1-4
    Created on : 2017/02/02, 2:44:31
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge1-4</title>
    </head>
    <body>
<%
    //定数「num1」と変数「num2」を宣言。
    final int num1 = 20;
    int num2 = 10;
        
    //四則演算をする。
    int tasi = (num1 + num2);
    int hiki = (num1 - num2);
    int kake = (num1 * num2);
    int wari = (num1 / num2);
            
    //四則演算の結果を表示する。今回は「num1=20」、「num2=10」。
    out.println("足し算の結果は" + tasi);//20+10=30
    out.println("引き算の結果は" + hiki);//20-10=10
    out.println("掛け算の結果は" + kake);//20*10=200
    out.println("割り算の結果は" + wari);//20/10=2
%>
    </body>
</html>
