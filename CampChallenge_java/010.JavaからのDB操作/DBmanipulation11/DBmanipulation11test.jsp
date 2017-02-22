<%-- 
    Document   : DBmanipulation11test
    Created on : 2017/02/22, 14:31:48
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DBmanipulation11test</title>
    </head>
    <body>
        <form action="DBmanipulation11" method="post">
        
        profilesID：<input type="number" name="ProfilesID" >
        <br>
        <br>
        名前：<input type="text" name="Name" >
        <br>
        <br>
        電話番号：<input type="tell" name="Tell" size="12" maxlength="20" >
        <br>
        <br>
        年齢：<input type="number" name="Age" >
        <br>
        <br>
        生年月日：<input type="date" name="Birthday">
        <br>
        <br>
        <input type="submit" name="btnSubmit" value="送信する">
        
        </form>
    </body>
</html>
