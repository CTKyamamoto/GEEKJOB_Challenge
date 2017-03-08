<%-- 
    Document   : Registration
    Created on : 2017/02/28, 18:49:23
    Author     : 将也
--%>
<%@page import = "java.sql.*" %>
<%@page import = "java.text.ParseException" %>
<%@page import = "java.text.SimpleDateFormat" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
<%
        HttpSession hs = request.getSession(true);
        Object Log = hs.getAttribute("log");
        if(Log == null || Log == "NO"){
            hs.setAttribute("log","NO");
            RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
            rd.forward(request, response);
        }
%>        
        <form action="Inventory" method="post">
        <center>
            <p><font size="6"><b><u>商品登録画面</u></b></font></p>
            <table border="4" cellpadding="15" bgcolor="">
                <tr>
                    <%--商品群は既定の物で金額を指定して送信する。--%>
                    <td><p>商品名：<select name="Name" required>
                    <option value="ACC">ACC</option>
                    <option value="PO/C">PO/C</option>
                    <option value="CD/C">CD/C</option>
                    <option value="SH">SH</option>
                    <option value="PO/K">PO/K</option>
                    <option value="CD/K">CD/K</option>
                    <option value="BL">BL</option>
                    <option value="JKT">JKT</option>
                    <option value="COAT">COAT</option>
                    <option value="PANT">PANT</option>
                    </select></p>
                </tr>
                <tr>
                    <td><p>金額：\<input type="number" name="Price" min="100" style="width: 8em;" required></p></td>
                </tr>
                <tr>
                    <td align="center" ><input type="submit" name="btnSubmit" value="商品登録">
                    <input type="reset" VALUE="リセット"></td>
                </tr>
            </table>
        <p><a href='Display'>商品確認ページ</a></p>
        <p><a href='Logout.jsp'>ログアウト</a></p>
        </center>
        </form>
    </body>
</html>
