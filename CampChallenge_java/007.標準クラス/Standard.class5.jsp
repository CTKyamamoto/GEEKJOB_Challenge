<%-- 
    Document   : Standard.class5
    Created on : 2017/02/15, 14:49:53
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class5</title>
    </head>
    <body>
<%
    String myName = "山本将也";
    
    //名前のバイトデータと文字数を取得する。
    int byteNum =myName.getBytes("UTF-8").length;
    int mojiName = myName.length(); 
    
    //「山本将也のバイト数(UTF=8)＝12　山本将也の文字数＝4」が表示される。
    out.print(myName+"のバイト数(UTF-8)＝"+byteNum+"<br>"+myName+"の文字数＝"+mojiName);
%>
    </body>
</html>
