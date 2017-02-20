<%-- 
    Document   : Data.manipulation2
    Created on : 2017/02/17, 13:15:01
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data.manipulation2</title>
    </head>
    <body>
        <!--action先をサーブレット先に指定する事でSubmitボタンを押された後サーブレットに情報が渡される。-->
        <form action="DataManipulation2test" method="post">
        
        名前：<input type="text" name="txtName" placeholder="ここに名前を記入する。">
        <br>
        
        性別：♂<input type="radio" name="rdoSex" value="♂">⚥<input type="radio" name="rdoSex" value="⚥">♀<input type="radio" name="rdoSex" value="♀">
        <br>
        
        趣味：<textarea name="txtaHobby" placeholder="ここに趣味を記入する。"></textarea>
        <br>
        
        <input type="submit" name="btnSubmit" value="送信する">
        
        </form>
    </body>
</html>
