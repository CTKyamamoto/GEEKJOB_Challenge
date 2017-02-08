<%-- 
    Document   : JSP.Servlet2-2
    Created on : 2017/02/06, 17:23:15
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.Servlet2-2</title>
    </head>
    <body>

<%!//ユーザー定義メソッドの作成をする際は%に!を付ける。
    
    //「getPlof」メソッドを作成する。名前、生年月日、自己紹介を表示するメソッドにしたいので戻り値「return」に記入する。
    String getProf(){                                                                                                                                                                                                                                                        
        return "名前：山本将也<br>"+"生年月日：1991年11月21日<br>"+"自己紹介：只今メソッドの勉強をしております！<br><br>";
    }
%>
<%
    //「getPlof」のメソッドを10回呼び出して表示する処理。
    for(int i=0;i<10;i++){
        
        out.println(getProf());
    }
%>
    </body>
</html>
