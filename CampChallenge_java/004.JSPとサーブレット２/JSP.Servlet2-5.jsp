<%-- 
    Document   : JSP.Servlet2-5
    Created on : 2017/02/07, 15:40:28
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.Servlet2-5</title>
    </head>
    <body>
<%!
    //「getPlof」メソッドを作成する。名前、生年月日、自己紹介を表示するメソッドにしたいので戻り値「return」に記入し、返却する。
    String getPlof(){
        return "名前：山本将也<br>"+"生年月日：1991年11月21日<br>"+"自己紹介：只今メソッドの勉強をしております！<br><br>";
    }
    //戻り値「return」にtrueを返却するメソッドを作成する。
    Boolean getTyep(){
        return true;
    }
%>
<%
    //「getPlof」「getTyep」メソッドの呼び出し。
    String plof = getPlof();
    Boolean tyep = getTyep();
    
    /*「getTyep」メソッドがtrueの時、getPlofメソッド内を10回表示して最後に「この処理は正しく実行できました。」を表示する処理。
    　true以外の時は、「正しく実行できませんでした。」が表示される。*/
    if(tyep == true){
     
    for(int i=0;i<10;i++){
        out.println(plof);
    }
        out.println("この処理は正しく実行できました。");
    }else{
        out.println("正しく実行できませんでした。");
    }
%>

    </body>
</html>
