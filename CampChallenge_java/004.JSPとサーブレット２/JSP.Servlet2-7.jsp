<%-- 
    Document   : JSP.Servlet2-7
    Created on : 2017/02/07, 16:26:52
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP.Servlet2-7</title>
    </head>
    <body>
<%! 
    //getPlofメソッドに3人分のプロフィールを定義する。idを引数にする。
    String[]getPlof(int id){
        
        String[] info = {null};
        String[] info1 = {"1111","A子","1111年11月11日","東京都東京区"};
        String[] info2 = {"2222","B男","2222年22月22日","神奈川県神奈川区"};
        String[] info3 = {"3333","C子","3333年33月33日","埼玉県埼玉区"};
        
        //引数idの値によって誰のプロフィールを選択するかの処理。
        switch(id){
            case 1111:
                info = info1;
                break;
            case 2222:
                info = info2;
                break;
            case 3333:
                info = info3;
                break;
        }
        return info;
}
%>
<%
    //getPlofの呼び出し、今回は引数に2222を渡す。
    String[] prof = getPlof(2222);
    
    //引数に指定したidプロフィールの配列から名前、生年月日、住所を取り出す。
    String name = prof[1];
    String birth = prof[2];
    String add = prof[3];
    
    //今回は2222を渡した為、「名前：B男　生年月日：2222年22月22日　住所：神奈川県神奈川区」が表示される。
    out.print("名前："+name+"<br>"+"生年月日："+birth+"<br>"+"住所："+add+"<br>");
%>
    </body>
</html>
