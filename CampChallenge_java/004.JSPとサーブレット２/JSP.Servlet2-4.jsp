<%-- 
    Document   : JSP.Servlet2-4
    Created on : 2017/02/07, 14:28:28
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.Servlet2-4</title>
    </head>
    <body>
<%!
    //引数が3つの「getNum」メソッドを作成する。(boolean型はtrue、false2つの値どちらかを取るデータ型。)
    Integer getNum(int x, int y, boolean tyep){
        
        /*1つ目の引数に2つ目の引数を掛ける計算をする。
        　3つ目の引数「tyep」がfalseの時はそのままにし、trueの時は2乗する処理。*/
        int a = x*y;
        if(tyep == true){
            a*=a;
        }
        if(tyep == false){
            a=a;
        }
        return a;
    }
    //引数「tyep」が未入力の場合、デフォルト値がfalseになる。
    Integer getNum(int x, int y){
        return getNum(x , y, false);
    }
    //引数「y」が未入力の場合、デフォルト値が5になる。
    Integer getNum(int x, boolean tyep){
        return getNum(x , 5, tyep);
    }
    //引数「y」「tyep」が未入力の場合、デフォルト値が5、falseになる。
    Integer getNum(int x){
        return getNum(x , 5, false);
    }
%>
<%
    //「getNum」メソッドの呼び出し、引数xに2、引数tyepにtrueを渡す。
    Integer num = getNum(2,true);
    
    /*今回はxに2、yが未入力なのでデフォルト値5、tyepがtrueなので、
    　2*5の処理後に2乗されて、「100」が表示される。*/
    out.println(num);
%>
    </body>
</html>
