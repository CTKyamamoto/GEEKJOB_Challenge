<%-- 
    Document   : challenge1-5
    Created on : 2017/02/02, 2:53:51
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge1-5</title>
    </head>
    <body>
<%
    //変数「num」を宣言する。
    int num = 2;
    
    //変数「num」が1の場合「１です！」、2の場合「プログラミングキャンプ！」、それ以外の場合「その他です！」の条件分岐をして表示する。
    if(num==1){
        out.println("１です！");
    }else if(num==2){
        out.println("プログラミングキャンプ！");
    }else{
        out.print("その他です！");
    }
    
    //今回は2の為、「プログラミングキャンプ！」が表示される。
%>
    </body>
</html>
