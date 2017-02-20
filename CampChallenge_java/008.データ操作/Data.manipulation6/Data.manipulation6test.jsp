<%-- 
    Document   : Data.manipulation6test
    Created on : 2017/02/19, 10:54:46
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data.manipulation6test</title>
    </head>
    <body>
<%
    //文字コード「UTF-8」を指定する。
    request.setCharacterEncoding("UTF-8");

    //jspで作成した値をパラメータとして取得する。
    String name = request.getParameter("txtName");
    String sex = request.getParameter("rdoSex");
    String hobby = request.getParameter("txtaHobby");
    
%>
    <form action="Data.manipulation6test.jsp" method="post">
        <center>
        <table border="4" bgcolor="#ffe4c4">
            <tr>
                <td><center><p><b><u>自身のプロフィール</u></b></p></center></td>
            </tr>
            <tr>
                <td>名前：<%=name%></td>
            <tr>
                <td>性別：<%=sex%></td>
            <tr>
                <td>趣味：<%=hobby%></td>
            </tr>
        </table>
        </center>
    </form>
    </body>
</html>
