<%-- 
    Document   : challenge2-8
    Created on : 2017/02/03, 15:17:32
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-8</title>
    </head>
    <body>
<%
    //配列に「10」「100」「soeda」「hayashi」「-20」「118」「end」を格納する。
    String word[] = {"10","100","soeda","hayashi","-20","118","end"};
    
    //格納した「soeda」を「33」に変更。表示する。
    word[2] = "33";
    
    out.println(word[2]);
%>
    </body>
</html>
