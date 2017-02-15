<%-- 
    Document   : Standard.class1
    Created on : 2017/02/14, 13:27:54
    Author     : 将也
--%>

<%@page import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Standard.class1</title>
    </head>
    <body>
<%
    //2016年1月1日 0時0分0秒のタイムスタンプを作成し、表示してください。
    //「java.util.*」をインポートしているので、「Date」型で時刻を取得できる。
    Date date = new Date();
    
    //「Calendar」クラスを利用して、2016年1月1日0時0分0秒を渡す。
    Calendar cal1 = Calendar.getInstance();
    cal1.set(2016,1,1,0,0,0);
    
    //年月日時分秒ひとつひとつを取得する。
    int year = cal1.get(Calendar.YEAR);
    int month = cal1.get(Calendar.MONTH);
    int day = cal1.get(Calendar.DAY_OF_MONTH);
    int hour = cal1.get(Calendar.HOUR_OF_DAY);
    int minute = cal1.get(Calendar.MINUTE);
    int second = cal1.get(Calendar.SECOND);
    
    //時間を渡した「cal1」のタイムスタンプを作成する。
    Date cal2 = cal1.getTime();
    
    //「2016年1月1日0時0分0秒のタイムスタンプは1454252400687」が表示される。
    out.print(year+"年"+month+"月"+day+"日"+hour+"時"+minute+"分"+second+"秒"+"のタイムスタンプは"+cal2.getTime());
%>
    </body>
</html>
