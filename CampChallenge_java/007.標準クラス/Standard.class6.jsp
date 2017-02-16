<%-- 
    Document   : Standard.class6
    Created on : 2017/02/15, 15:07:26
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class6</title>
    </head>
    <body>
<%
    String add = "123456789@gmail.com";
    
    //「star」@の文字列を取得。「end」に全体の文字列を取得させる。
    int start = add.indexOf("@");
    int end = add.length();
    
    /*文字列の取得をして表示する。starを開始位置、endを終了位置に指定したことで、
    　「@以降の文字＝@gmail.com」が表示される。 */
    out.println("@以降の文字＝"+add.substring(start,end));
%>
    </body>
</html>
