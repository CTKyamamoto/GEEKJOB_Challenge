<%-- 
    Document   : challenge2-10
    Created on : 2017/02/03, 16:27:12
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-10</title>
    </head>
    <body>
<%@ page import="java.util.ArrayList"%>
<%
    //クエリストリングで入力された正の整数を取得する。
    String num1 = request.getParameter("number");
        
    ArrayList<Integer> al =
            new ArrayList<Integer>();
    
    //1桁の素数、「2」「3」「5」「7」をArrayListに格納する。
    al.add(2);
    al.add(3);
    al.add(5);
    al.add(7);
    
    //クエリストリングで入手した文字列を数値に変換する。
    int num2 = Integer.parseInt(num1);
    
    out.println("元の値＝"+num2);
    out.print("<br>"+"1ケタの素因数＝");
    
    int j = 0;
    
    //簡易素因数分解をする為、ArrayList内の素数を順に処理をする。
    for (Integer val : al) {
    
    int i = 0;
    
    /*整数「num2」を素数「val」で割った時、余りが出なければ同じ「val」で割る処理。
    余りが出たら次の「val」に移行し処理を続ける。*/
    while(num2%val==0){
        num2=num2/val;
        i++;
    }
    //「i=ループ回数」1つのvalで何回ループしたかがわかる。何乗したかを表示する為のループ処理。
    if(i>0){
    
    /*「val^i」*「val^i」の「*」を表示する為のループ処理。
    次のvalに移行した時、2回目のループから「val^i」の前に「*」を表示する。*/
    if(j>0){
        out.print("*");
    }
        j++;
        out.print(val+"^"+i);   
    }
    }
    //1桁の素数で割り切れなかった時の余りを表示する為のループ処理。2桁以上の素数、11～が表示される。
    if(num2>10){
        out.println("<br>"+"その他＝"+num2);
    }
    
    /*「例」整数88を簡易素因数分解する場合。
    元の値＝88、1ケタの素因数＝2^3、その他＝11が表示されます。
    http://localhost:8080/challenge2/challenge2-10.jsp?number=88 */
%>
    </body>
</html>
