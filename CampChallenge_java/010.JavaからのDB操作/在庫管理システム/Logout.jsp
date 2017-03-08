<%-- 
    Document   : Logout
    Created on : 2017/03/08, 10:31:14
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
<%
        //セッションを削除してログイン画面に戻る処理。
        
        HttpSession hs = request.getSession(true);
        
        hs.setAttribute("log",null);
        hs.invalidate();
        
        RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
        rd.forward(request, response);
%>
    </body>
</html>
