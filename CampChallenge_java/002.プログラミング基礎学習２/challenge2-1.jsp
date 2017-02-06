<%-- 
    Document   : challenge2-1
    Created on : 2017/02/02, 17:23:32
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-1</title>
    </head>
    <body>
<%
    //変数「num」が1の場合、「one」、2の場合「two」、それ以外の場合「想定外」の条件分岐をして表示する。
    int num = 2; String message ="";
    switch(num){
        case 1:
            message = "one";
            break;
        case 2:
            message = "two";
            break;
        default:
            message = "想定外";
            break;
    }
    
    //今回は2の為、「two」が表示される。
    out.println(message);
%>
    </body>
</html>
