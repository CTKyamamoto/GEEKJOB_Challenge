<%-- 
    Document   : challenge2-2
    Created on : 2017/02/02, 17:41:31
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-2</title>
    </head>
    <body>
<%
    //変数「str」がAの場合「英語」、あの場合「日本語」、その他の場合は処理されない条件分岐。
    char str = 'あ'; String message ="";
    switch(str){
        case 'A':
            message = "英語";
            break;
        case 'あ':
            message = "日本語";
            break;
    }
    //今回はあの為、「日本語」を表示する。
    out.println(message);
%>
    </body>
</html>
