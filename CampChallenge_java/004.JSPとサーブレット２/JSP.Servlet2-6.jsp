<%-- 
    Document   : JSP.Servlet2-6
    Created on : 2017/02/07, 16:08:35
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.Servlet2-6</title>
    </head>
    <body>
<%!
    //getPlofメソッドの戻り値に山本将也のid、名前、生年月日、住所を返却する。配列なので[]。
    String[]getPlof(){
        
        String[] info = {"1111","山本将也","1991年11月21日","東京都三鷹市"}; 
        
        return info;
}
%>
<%
    //getPlofメソッドの呼び出し。
    String[]plof = getPlof();
    
    //plof配列の名前、生年月日、住所を取り出して表示する。
    String name = plof[1];
    String birth = plof[2];
    String add = plof[3];
    
    //「名前：山本将也　生年月日：1991年11月21日　住所：東京都三鷹市」が表示される
    out.println("名前："+name+"<br>"+"生年月日："+birth+"<br>"+"住所："+add+"<br>");
%>
    </body>
</html>
