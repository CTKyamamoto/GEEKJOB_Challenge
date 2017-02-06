<%-- 
    Document   : challenge2-7
    Created on : 2017/02/03, 14:47:24
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-7</title>
    </head>
    <body>
<%
    //配列に「10」「100」「soeda」「hayashi」「-20」「118」「end」を格納する。
    String word[] = {"10","100","soeda","hayashi","-20","118","end"};
    
    //確認の為、順番に取り出して表示する。
    for(int i=0;i<7;i++){
    out.println(word[i]);
    }
%>
    </body>
</html>
