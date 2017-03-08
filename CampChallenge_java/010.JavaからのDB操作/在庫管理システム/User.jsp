<%-- 
    Document   : User
    Created on : 2017/03/07, 22:16:07
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
    </head>
    <body>
<%
        //セッションが"NO"か"null"の時はログイン画面に戻る処理。今後全てのページでセッションの判断を行う。
        HttpSession hs = request.getSession(true);
        Object Log = hs.getAttribute("log");
        if(Log == null || Log == "NO"){
            hs.setAttribute("log","NO");
            RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
            rd.forward(request, response);
        }
%>
        <center>
            <p><%=Log%>さんようこそ！</p>
            <p><a href='Registration.jsp'>商品登録ページ</a></p>
            <p><a href='Logout.jsp'>ログアウト</a></p>
        </center>
    </body>
</html>
