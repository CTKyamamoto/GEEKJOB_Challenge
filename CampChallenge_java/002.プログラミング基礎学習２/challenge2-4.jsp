<%-- 
    Document   : challenge2-4
    Created on : 2017/02/03, 4:03:13
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-4</title>
    </head>
    <body>
<%
    //最初の処理をやり過ごす為、空文字を定義する。
    String str = "";
    
    //30回のループ処理、1ループでstr+Aを行う。(Aを30個連結する処理。)
    for(int i=0;i<30;i++){
    str = str + "A";
    }
    //Aが30個連結して表示される。
    out.println(str);
%>
    </body>
</html>