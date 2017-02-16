<%-- 
    Document   : Standard.class2
    Created on : 2017/02/14, 14:14:31
    Author     : 将也
--%>

<%@page import="java.util.*,java.text.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class2</title>
    </head>
    <body>
<%
    Date date = new Date();
    
    //SimpleDateFormatクラスを利用して現在の日時を取得する。
    SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    
    String dat = simple.format(date);
    
    //現在の日時が「○年-○月-○日　○時:○分:○秒」で表示される。
    out.print(dat);
%>
    </body>
</html>
