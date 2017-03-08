<%-- 
    Document   : Login
    Created on : 2017/02/28, 17:08:19
    Author     : 将也
--%>

<%@page import= "java.io.*"%>
<%@page import= "javax.servlet.*"%>
<%@page import= "javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
<%
        //セッションに正しい名前とPASSが入っていない時「ログイン失敗」を表示する。
        HttpSession hs = request.getSession(true);
        Object Log = hs.getAttribute("log");
        
        if(Log != null){
            out.println("<center>"+"※ログイン失敗です※"+"<br>");
            out.println("※名前とPASSを入力して下さい※"+"</center>");
        
            hs.setAttribute("log",null);
        }
%>        
        <form action="LoginCheck" method="post">
        <center>
            <p><font size="6"><b><u>ログイン画面</u></b></font></p>
            <table border="4" cellpadding="15" bgcolor="">
                <tr>
                    <td><p>名前：<input type="text" name="Name" ></p></td>
                </tr>
                <tr>
                    <td><p>PASS：<input type="password" name="Pass" size="6" maxlength="6" ></p></td>
                </tr>
                <tr>
                    <td align="center" ><input type="submit" name="btnSubmit" value="ログイン">
                    <input type="reset" VALUE="リセット"></td>
                </tr>
            </table>
        </center>
        </form>
    </body>
</html>
