<%-- 
    Document   : Data.manipulation6
    Created on : 2017/02/18, 21:32:01
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data.manipulation6</title>
    </head>
    <body>

        <!--action先はSubmitボタンを押された後に移動するページ。(サーブレットはXMLにチェックを入れていたから拡張子は入らなかったが、JSPは必要。)-->
        <form action="Data.manipulation6test.jsp" method="post">
        <center><!--真ん中調整するタグ-->
    
        <table border="4" bgcolor="#eafff4"><!--表の作成をするタグ-->
            <tr>
                <td><center><p><b>プロフィール</b>の<u>記入</u></p></center></td><!--<b>は太字<u>は下線にするタグ-->
            </tr>
            <tr>
                <td>名前：<input type="text" name="txtName" placeholder="ここに名前を記入する。" ></td>
            </tr>
            <tr>
                <td>性別：♂<input type="radio" name="rdoSex" value="♂">
                ⚥<input type="radio" onclick="alert('※Are you transgender?')" name="rdoSex" value="⚥"><!--<onclick>で押された時にアラートを表示する。-->
                ♀<input type="radio" name="rdoSex" value="♀"></td>
            </tr>
            <tr>
                <td>趣味：<textarea name="txtaHobby" placeholder="ここに趣味を記入する。"></textarea></td>
            </tr>
            </table>
                <br>
                <img onclick="submit();" name="btnSubmit" value="送信する" src="submit.png" alt="submit" width="90" height="50"><!--<img>はサブミットボタンを画像にする。-->
        
        </center>
        </form>
    </body>
</html>
