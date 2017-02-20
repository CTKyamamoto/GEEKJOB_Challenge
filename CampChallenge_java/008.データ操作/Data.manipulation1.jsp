<%-- 
    Document   : Data.manipulation1
    Created on : 2017/02/16, 16:10:53
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data.manipulation1</title>
    </head>
    <body>
        <!--<form>で括る事で入力フィールドを使う。-->
        <form action="Data.manipulation1.jsp" method="post">
        
        <!--名前のテキストボックスの作成をする。-->
        名前：<input type="text" name="txtName" placeholder="ここに名前を記入する。">
        <br>
        
        <!--性別のラジオボタンを作成する。-->
        性別：♂<input type="radio" name="rdoSex" value="♂">⚥<input type="radio" name="rdoSex" value="⚥">♀<input type="radio" name="rdoSex" value="♀">
        <br>
        
        <!--趣味の複数行テキストボックスを作成する。-->
        趣味：<textarea name="txtaHobby" placeholder="ここに趣味を記入する。"></textarea>
        <br>
        
        <!--サブミットボタンで送信ボタンの作成。-->
        <input type="submit" name="btnSubmit" value="送信する">
        
        </form>
    </body>
</html>
