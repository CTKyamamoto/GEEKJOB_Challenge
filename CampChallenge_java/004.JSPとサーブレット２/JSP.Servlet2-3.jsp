<%-- 
    Document   : JSP.Servlet2-3
    Created on : 2017/02/07, 13:00:29
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.Servlet2-3</title>
    </head>
    <body>
<%!
    //「getNum」メソッドを作成し、「int x」を引数にする。
    String getNum(int x){
    
    String y ="";
    
    //引数が偶数か奇数かの判別処理をする。
    if(x%2 == 0){
        y = "は偶数です。";
    }
    if(x%2 != 0){
        y = "は奇数です。";
    }
    //戻り値にyを置く事で判別処理後の結果を返却する。
    return y;
    }
%>
<%    
    //「int z」を適当な数値に設定。今回を21を指定する。
    int z = 21;
    
    //「getNum」メソッドの呼び出し。引数に適当な数値「z」を渡し、getNumメソッドの処理を行う。
    String num = getNum(z);
    
    //今回は21を渡したので「21は奇数です。」が表示される。
    out.print(z+num);
%>
    </body>
</html>
