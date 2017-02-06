<%-- 
    Document   : challenge2-5
    Created on : 2017/02/03, 4:25:27
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-5</title>
    </head>
    <body>
<%
    int sum =0;
    
    //100回のループ処理、1ループでsum(今までの合計)プラス1+i(ループ回数分)を足す処理。
    for(int i=0;i<100;i++){
    sum  = sum + 1 + i;
    }
    //0から100までを全部足した合計値「5050」が表示される。
    out.println(sum);
%>
    </body>
</html>
