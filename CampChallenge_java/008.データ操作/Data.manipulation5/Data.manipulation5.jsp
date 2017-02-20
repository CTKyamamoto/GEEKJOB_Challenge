<%-- 
    Document   : Data.manipulation5
    Created on : 2017/02/18, 20:15:01
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data.manipulation5</title>
    </head>
    <body>
<%
    //セッションの作成。
    HttpSession hs = request.getSession(true);
    
    //セッションの取得をする。
    String n = (String)hs.getAttribute("Name");
    String s = (String)hs.getAttribute("Sex");
    String h = (String)hs.getAttribute("Hobby");
    
    //初回起動時にnullが出てしまうので空文字を設定する。
    if(n == null || s == null || h == null){
        n="";
        s="";
        h="";
    }
%>
        <!--action先をサーブレット先に指定する事でSubmitボタンを押された後サーブレットに情報が渡される。-->
        <form action="DataManipulation5test" method="post">
        
        <!--valueに取得したセッション情報を入れることで初期値にする。--><!--「n」はjavaなので%で括る。-->
        名前：<input type="text" name="txtName" placeholder="ここに名前を記入する。" value="<%=n%>">
        <br>
        
        <!--radioの初期値指定は「checked」3つの可能性があるのでif分処理をする。-->
        性別：♂<input type="radio" name="rdoSex" value="♂"<%if(s.equals("♂")){out.print("checked");}%>>
        ⚥<input type="radio" name="rdoSex" value="⚥"<%if(s.equals("⚥")){out.print("checked");}%>>
        ♀<input type="radio" name="rdoSex" value="♀"<%if(s.equals("♀")){out.print("checked");}%>>
        <br>
        
        趣味：<textarea name="txtaHobby" placeholder="ここに趣味を記入する。"><%=h%></textarea>
        <br>
        
        <input type="submit" name="btnSubmit" value="送信する">
        
        </form>
    </body>
</html>
