<%-- 
    Document   : FortuneTellingResult
    Created on : 2017/02/06, 14:01:20
    Author     : 将也
--%>

<%@page import="org.camp.servlet.ResultData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            ResultData data = (ResultData)request.getAttribute("DATA");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>今日の運勢(JSP)</title>
    </head>
    <body>
        <%
            if (data != null) {
                out.print("<h1>あなたの" + data.getD() + "の運勢は、" + data.getLuck() + "です！</h1>");
            }
        %>
    </body>
</html>
