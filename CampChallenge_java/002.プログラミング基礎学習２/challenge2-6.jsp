<%-- 
    Document   : challenge2-6
    Created on : 2017/02/03, 14:04:44
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-6</title>
    </head>
    <body>
<%
    //1000を2で割り続け、100より小さくなったらループを抜ける処理
    int num = 1000;
    
    //numが100より小さくなるとループ終了。1000を2で割り続ける処理。
    while(num>100){
        num = num/2;
    }
    //1000を2で割り続け、100より小さくなった時の値「62」を表示する。
    out.println(num);
%>
    </body>
</html>
