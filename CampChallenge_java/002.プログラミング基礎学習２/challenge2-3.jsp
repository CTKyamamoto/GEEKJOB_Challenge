<%-- 
    Document   : challenge2-3
    Created on : 2017/02/03, 3:06:07
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-3</title>
    </head>
    <body>
<%
    //数値が大きくなる為、「long」使用。
    long num = 1;
    
    //20回のループ処理、1ループでnum*8を行う。(8を20回掛ける処理。)
    for(int i=0;i<20;i++){
        num = num*8;
    //8を20回掛けた結果は「1152921504606846976」
    out.println(num);
    }
    out.println("<br><br>");
    
    //確認の為、逆算処理。
    for(int i=0;i<20;i++){
        num = num/8;
    out.println(num);
    }   
%>
    </body>
</html>
