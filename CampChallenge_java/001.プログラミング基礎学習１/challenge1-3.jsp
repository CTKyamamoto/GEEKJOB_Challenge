<%-- 
    Document   : challenge1-3
    Created on : 2017/02/01, 15:20:17
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge1-3</title>
    </head>
    <body>
<%
    //変数「profile」を宣言し、自分の自己紹介を中身として定義、表示する。
    String profile = "私の名前は山本将也と申します。1991年11月21日生まれでございます。<br>"+
    "趣味はテニスとゲームで、アウトドア・インドア両方に当てはまると思います。<br>"+
    "プログラミング基礎に入り、課題取り組みが今とても楽しいです。<br>"+
    "このモチベーションを維持して頑張るので、どうか宜しくお願い致します。";
    
    out.println(profile);
%>
    </body>
</html>
