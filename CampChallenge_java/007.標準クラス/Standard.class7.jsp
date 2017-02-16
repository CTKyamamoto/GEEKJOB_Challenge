<%-- 
    Document   : Standard.class7
    Created on : 2017/02/15, 15:17:35
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class7</title>
    </head>
    <body>
<%
    //「message」は課題の文字列。
    String message = "「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」";
    
    //「I」を「い」に、「U」を「う」に置換する。
    String result = message.replace("I","い").replace("U","う");
    
    //「きょうはぴいえいちぴいのくみこみかんすうのがくしゅうをしています」が表示されます。
    out.println(result);
%>
    </body>
</html>
