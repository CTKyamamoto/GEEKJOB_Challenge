<%-- 
    Document   : challenge2-9
    Created on : 2017/02/03, 15:34:30
    Author     : 将也
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>challenge2-9</title>
    </head>
    <body>

<%@page import="java.util.HashMap"%>
<%
//<%@page～ Mapが定義されている名前空間を参照している。
    
    //HashMapのオブジェクトを作成、キーの型と格納する要素の型を指定している。
    HashMap<String,String> hMap =
        new HashMap<String,String>();
    
    //キー「1」「hello」「soeda」「20」を登録。要素「AAA」「world」「33」「20」を格納する。
    hMap.put("1","AAA");
    hMap.put("hello","world");
    hMap.put("soeda", "33");
    hMap.put("20","20");
    
    /*キーに対応した要素を取り出して表示する。
    「AAA」「world」「33」「20」が表示される。*/
    out.println(hMap.get("1"));
    out.println(hMap.get("hello"));
    out.println(hMap.get("soeda"));
    out.println(hMap.get("20"));
%>
    </body>
</html>
